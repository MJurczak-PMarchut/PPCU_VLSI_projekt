
`timescale 1 ns / 100 ps

module mtm_Alu_tb(
    output reg clk,
    output reg rst_n,
    output wire sin,
    input wire sout
) ;

localparam STATE_TRANSMIT = 3'b000;
localparam STATE_COMPARE = 3'b001;
localparam STATE_ERR = 3'b100;


localparam AND  =   3'b000;
localparam OR   =   3'b001;
localparam ADD  =   3'b100;
localparam SUB  =   3'b101;
localparam ERR_OP_1 = 3'b010;
localparam ERR_OP_2 = 3'b011;
localparam ERR_OP_3 = 3'b110;
localparam ERR_OP_4 = 3'b111;

localparam CARRY    = 3;
localparam OVF      = 2;
localparam ZERO     = 1;
localparam NEGATIVE = 0;

localparam ERR_DATA = 2;
localparam ERR_CRC  = 1;
localparam ERR_OP   = 0;




//  wire pclk_mirror;
  reg bitstream;
//  wire [3:0] r, g, b;

  // Instantiate the vga_example module.
  

  // Describe a process that generates a clock
  // signal. The clock is 100 MHz.

reg clk_en;
  always
  begin
    clk = 1'b0;
    #5;
    if(clk_en == 1'b1)
        clk = 1'b1;
    #5;
  end
reg start;
reg [54:0] Temp,Ce;
reg [31:0] Cin;
reg [7:0] byteA;
reg VALID_case;
reg [9:0] Test_case_number, Test_case_number_d;
reg [7:0] FAIL_MAX;
reg GlobalPass;
reg [2:0] State, State_old;
   
   reg [31:0] Adat, Bdat;
   reg [3:0] crc;
   reg [2:0] OP;
   reg [2:0] Err;
   reg score;
  initial
  begin
    start = 1'b0;
    Test_case_number = 10'b0;
    Test_case_number_d = 0;
    Adat = 32'hEADD2255;
    GlobalPass = 1'b1;
    bitstream =1'b1;
    Bdat = 32'hFFAA00FF;
    clk_en = 1'b1;
    byteA = 8'b10111101;
    OP = OR;
    FAIL_MAX = 0;
    $display("If simulation ends before the testbench");
    $display("completes, use the menu option to run all.");
    $display("Prepare to wait a long time...");
    rst_n = 1'b1;
    #1;
    rst_n = 1'b0;
    #10;
    rst_n = 1'b1;
    
    for(Test_case_number = 0; Test_case_number < 1000; Test_case_number = Test_case_number +1)
        begin
            prepare_testcase(Test_case_number,Adat,Bdat,OP,VALID_case,Err);
            send_calculation_data(Adat,Bdat,OP,Err,~Err[ERR_CRC]);
        end

//    @(posedge State[0])
////        if(State == STATE_COMPARE)
//            compare(Adat,Bdat,Cin,OP,Ce[0+:3],crc,Ce[4+:4],Ce[1+:3],Err,Ce[0],1'b1,~Ce[54],9,score);
    clk_en = 1'b0;
//    if(score == 1)
//        $display("PASS");
//    else
//        $display("FAIL");
    if(GlobalPass)
        $display("Global PASS");
    else
        $display("Global FAIL");
    $display("Simulation is over, check the waveforms.");
    $stop;
  end


reg [67:0] Data;



task send_calculation_data;
input [31:0] A;
input [31:0] B;
input [2:0] OP;
input [3:0] ErrNo;
input CRC_VALID;

reg CMD;
reg [3:0] CRC;
reg [3:0] i;
reg [3:0] FrameNo;
integer Data_Ser;

begin
    FrameNo = (ErrNo[ERR_DATA] == 1'b1)? 8:9;
    Data = {B,A,1'b0,OP};
    CMD = 1'b0;
    for(i = FrameNo; i > 4'h1; i = i - 1'b1)
    
        begin        
        send_byte(Data[((8*i)-5)-:8], CMD);    
        end
        
    CMD = 1'b1;
    CRC = 4'b0;
    Data_Ser = 0;
    repeat(68)
      begin
        CRC[3]  = CRC[2] ^ Data[(67 - Data_Ser)] ^ CRC[3];
        CRC[2]  = CRC[1];
        CRC[1]  = CRC[0];
        CRC[0]  = Data[(67 - Data_Ser)] ^ CRC[3];
        Data_Ser = Data_Ser+1;
      end
      if(CRC_VALID)
        send_byte({Data[3:0],CRC},CMD);
      else
        send_byte({Data[3:0],~CRC},CMD);
end
endtask


reg [10:0] DataOut;

task send_byte;
input [7:0] Byte;
//input clk;
input CMD;
//output bitsream;

begin
    DataOut = {1'b0,CMD,Byte,1'b1};
	repeat(11)
		@(negedge clk)
	    begin
             bitstream = DataOut[10];
             DataOut = DataOut << 1;
        end
end
endtask


reg Start_Data = 1'b0;
//reg Sout;
reg [6:0] Data_count = 7'b0;
integer Iter;
reg [6:0] DataLeft = 7'b0;
reg PacketType = 1'b0;

always 
    @(negedge clk)
    
        begin
            if (Start_Data == 1'b0)
                if(sout == 1'b0)
                    Start_Data = 1'b1;
                else
                    FAIL_MAX = FAIL_MAX + 1;
            if(Start_Data == 1'b1)
                begin
                    FAIL_MAX = 0;
                    Data_count = Data_count + 1'b1;
                    Temp[(55 - Data_count) -:1] = sout;
                end
            if(Data_count == 7'h2)
                if(sout)
                    PacketType = 1'b1;
                else 
                    PacketType = 1'b0;
            else if(Data_count == 7'h3)
                if(sout && PacketType)
                    begin
                        State = STATE_ERR;
                        DataLeft = 11; //jakby cos nie dzialalo to moze byc tu
                    end
                    else
                    begin
                        DataLeft = 7'h37;
                        State = STATE_COMPARE;
                    end
            if((Start_Data == 1'b1) && (Data_count == DataLeft ))
                begin
                    if(State != STATE_ERR)
                        for(Iter = 0;Iter<4;Iter = Iter+1)
                        begin
                            Cin[Iter*8+:8] = Temp[(((Iter+1) * 11) + 1)+:8];
    //                        $display("Index = %d", (((Iter+1) * 11) + 1));
                        end
                    Ce = Temp;
                    Data_count = 7'b0;
                    Start_Data = 1'b0;
                    prepare_testcase(Test_case_number_d,Adat,Bdat,OP,VALID_case,Err);
                    $display("Test Case %d ", Test_case_number_d);
		   // $display("%h",Ce);
                    Test_case_number_d = Test_case_number_d + 1;
		    start = 1'b1;
                    compare(Adat,Bdat,Cin,OP,Ce[1+:3],Ce[4+:4],Ce[51:49],Err,Ce[52-:8],VALID_case,~Ce[54],(State == STATE_ERR)?1:9,score);
                    State = STATE_COMPARE;
                end
            if(FAIL_MAX == 8'hFF)
                begin
                    $display("Max failure rate achieved, exiting...\n");
                    $stop;
                    
                end
        end



task compare;
input [31:0] A,B,C;
input [2:0] OP;
input [2:0] CRCin;
input [3:0] Flag;
input [2:0] ErrFlag;
input [2:0] ErrIn;
input [7:0] ErrorFrame;
input VALID;
input VALIDout;
input [3:0] NoOfFrames;
output PASS;
reg   [3:0] crc;
reg [6:0] Data_Ser;
reg [36:0] data_in;

reg Score;
reg [32:0] Result;
reg Overflag;

begin
    Score = 1'b1;
    data_in = {C,1'b0,Flag,CRCin};
    crc = 3'b0;
    if(VALID) begin
        if(NoOfFrames != 9)
            Score = 1'b0;
        for(Data_Ser = 0;Data_Ser < 37;Data_Ser = Data_Ser + 1)
          begin
                crc[2]  = crc[1] ^ data_in[36 - Data_Ser] ^ crc[0];
                crc[1]  = crc[0];
                crc[0]  = data_in[36 - Data_Ser] ^ crc[2];
          end
         if(crc == 3'b0)
            begin
                case(OP)
                    ADD:
                        begin
                         Result = A+B;
                         Overflag = (A[31]==B[31])?((Result[31] == A[31])?1'b0:1'b1):1'b0;
                        end
                    SUB:
                        begin
                            Result = A-B;
                            Overflag = (A[31]!=B[31])?((Result[31] == B[31])?1'b1:1'b0):1'b0;
                        end
                    OR:
                        Result = A|B;
                    AND:
                        Result = A&B;
                    endcase
                    
                case(OP)
                    ADD:
                        if(C != Result[31:0])
                        begin
                           Score = 1'b0;
                           $display("FAIL ADD");
                        end
                    SUB:
                        if(C != Result[31:0])
                        begin
                            Score = 1'b0;
                            $display("FAIL SUB");
                        end
                    OR:
                        if(C != Result[31:0])
                        begin
                            Score = 1'b0;
                            $display("FAIL OR");
                        end
                    AND:
                        if(C != Result[31:0])
                        begin
                            Score = 1'b0;
                            $display("FAIL AND");
                        end
                endcase
                $display("A = %h\nB = %h\nC = %h\nResult = %h\nFlag = %b",A,B,C,Result,Flag);
		
	
                if(Result[32] != Flag[CARRY])
                begin
                    Score = 1'b0;
                    $display("FAIL CARRY");
                end
                if(Result[31] != Flag[NEGATIVE])
                begin
                    Score = 1'b0;
                    $display("FAIL NEGATIVE");
                end
                if(Result == 32'b0)

                    if (Flag[ZERO] == 1'b0)
                    begin
                        Score = 1'b0;
                        $display("FAIL ZERO +");
                    end
                if(Result != 32'b0)
                    if (Flag[ZERO] == 1'b1)
                    begin
                        Score = 1'b0;
                        $display("FAIL ZERO -");
                    end
                if(Overflag != Flag[OVF])
                begin
                    Score = 1'b0;
                    $display("FAIL OVERFLOW");
                end 
                else
                    Score = Score;              
            end
         else
            begin
                Score = 1'b0;
                $display("WRONG CRC");
            end
        end
        if(ErrIn != 3'b0)
        begin
            if(NoOfFrames != 1)
            begin
                Score = 1'b0;
                $display("FRAME ERROR");
            end
            if(ErrIn != ErrFlag)
            begin
                if(ErrIn[ERR_DATA]!= ErrFlag[ERR_DATA])
                    $display("DATA ERROR");
                if(ErrIn[ERR_OP]!= ErrFlag[ERR_OP])
                    $display("OP ERROR");
                if(ErrIn[ERR_CRC]!= ErrFlag[ERR_CRC])
                    $display("CRC ERROR");
                Score = 1'b0;
            end 
            if (~(^ErrorFrame))
                begin
                    $display("PARITY ERROR");
                    Score = 1'b0;
                end    
        end
        PASS = Score;
        if(PASS)
            $display("PASS");
        else
            begin
                $display("FAIL");
                GlobalPass = 1'b0;
            end
    //    case(OP)
//        ADD :  ;
//        default: ;
//    endcase

end
endtask

assign sin = bitstream;


task prepare_testcase;
input [9:0] test_case_seed;
output [31:0] A;
output [31:0] B;
output [2:0] OP;
output VALID;
output [2:0] ErrOut;

begin
    VALID = 1'b1;
    ErrOut = 3'b0;
    case(test_case_seed)
        0:
            begin
                A = 32'b0;
                B = 32'b0;
                OP = SUB;
            end
        1:
            begin
                A = 32'b01;
                B = 32'b0;
                OP = ADD;
            end
        2:
            begin
                A = 32'b0;
                B = 32'b0;
                OP = AND;
            end
        3:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'b0;
                OP = OR;
            end
        4:
            begin
                B = 32'hFF_FF_FF_FF;
                A = 32'b0;
                OP = SUB;
            end
        5:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'b0;
                OP = ADD;
            end
        6:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'b0;
                OP = AND;
            end
        7:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'b0;
                OP = OR;
            end
        8:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = OR;
            end
        9:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = ADD;
            end
        10:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = SUB;
            end
        11:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = SUB;
                VALID = 1'b0;
                ErrOut[ERR_DATA] = 1'b1;
            end
        12:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = ERR_OP_1;
                VALID = 1'b0;
                ErrOut[ERR_OP] = 1'b1;
            end
        13:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = ERR_OP_2;
                VALID = 1'b0;
                ErrOut[ERR_OP] = 1'b1;
            end
        14:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = ERR_OP_3;
                VALID = 1'b0;
                ErrOut[ERR_OP] = 1'b1;
            end
        15:
            begin
                A = 32'hFF_FF_FF_FF;
                B = 32'hFF_FF_FF_FF;
                OP = ERR_OP_4;
                VALID = 1'b0;
                ErrOut[ERR_OP] = 1'b1;
            end
        default:
            begin
               
               A = 32'hFF_FF_FF_FF - (test_case_seed << 3);
               B = test_case_seed;
               if(test_case_seed[9:4] != 6'b111_111)
                    if(test_case_seed[1:0] == 2'b00)
                        OP = ADD;
                    else if(test_case_seed[1:0] == 2'b01)
                        OP = SUB;
                    else if(test_case_seed[1:0] == 2'b10)
                        OP = AND;
                    else if(test_case_seed[1:0] == 2'b11)
                        OP = OR;
               if(test_case_seed[9:4] == 6'b111_111)
               begin
                    VALID = 1'b0;

                    if(test_case_seed[3])
                    begin
                        ErrOut[ERR_OP] = 1'b1;
                        case(test_case_seed[1:0])
                            2'b00:
                                OP = ERR_OP_1;
                            2'b01:
                                OP = ERR_OP_2;
                            2'b10:
                                OP = ERR_OP_3;
                            2'b11:
                                OP = ERR_OP_4;
                        endcase
                    end
                    if (test_case_seed[2])
                    begin
                        ErrOut[ERR_CRC] = 1'b1;                       
                    end
                    if(test_case_seed[3:2] == 2'b0)
                        ErrOut[ERR_DATA] = 1'b1;
                        
                        
                end
                        
            end
    endcase


end
endtask





endmodule

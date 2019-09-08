/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu
 * PROJECT:   PPCU_VLSI
 * AUTHORS:
 * DATE:
 *******************************************************************************/

module mtm_Alu_serializer (
	input wire clk,
	input wire rst_n,
	input wire [39:0] in,
	input wire data_ready,
	output reg out
);

wire out_nxt;
reg [2:0] set_counter;
reg [3:0] counter;
reg [39:0] data;
reg data_case;
reg [2:0] crc;
reg parity;


always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
        begin
           // out_nxt = 1'b1;
            set_counter <= 3'b0;
            counter <= 4'b0;
            data <= 40'b0;
            data_case <= 1'b0;
            crc <= 3'b0;
            parity <= 1'b1;
        end
    else
	begin
	if(data_ready)
		    begin
			set_counter <= (in[7]) ? 3'h5 : 3'h1;
			data_case <= in[7];
			data <= (in[7])? {in[0+:8],32'b0}:in;
			counter <= 4'h0;
			parity <= 1'b1;
			crc <= 3'b0;
		    end
        else if(set_counter != 3'b0)
            begin
//                if(counter == 4'b0) out_nxt = 1'b0;
//                else if(counter == 4'h01) out_nxt = ((set_counter==3'h5)? 1'b1:1'b0);
                if(counter == 4'h0a) 
                    begin
//                        out_nxt = 1'b1;
                        set_counter <= (set_counter == 3'h5)? 3'h0 : (set_counter + 1'b1);    
                    end
                else if(counter != 4'h0 && counter != 4'h1)
                    begin
//                        out_nxt = data[39];
                        if(data_case)
                            if(counter == 4'h9) data[38] <= parity;
                            else parity <= data[39] ^ parity;
                        else
                            begin
                                crc[2]  <= crc[1] ^ data[39] ^ crc[0];
                                crc[1]  <= crc[0];
                                crc[0]  <= data[39] ^ crc[2];
                                if((set_counter == 3'h5) && (counter == 4'h6)) data[38:36] <= crc;
                            end
                        data <= data << 1;
                    end
                counter <= (counter == 4'ha)? 4'b0 : counter + 1'b1;
            end
	end

end


//always@(posedge clk or negedge rst_n)
//if(!rst_n)
//	out_nxt <= 1'b0;
//else
assign out_nxt = (set_counter == 3'b0)? 1'b1:
	(counter == 4'h0)? 1'b0:
	((counter == 4'h1) && (set_counter == 3'h5))? 1'b1:
 	(counter == 4'h1)? 1'b0:
	(counter == 4'ha)? 1'b1: data[39];
	

always @(posedge clk)
	out <= out_nxt;

    

endmodule

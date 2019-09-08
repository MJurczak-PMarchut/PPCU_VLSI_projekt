/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu
 * PROJECT:   PPCU_VLSI
 * AUTHORS:
 * DATE:
 *******************************************************************************/

module mtm_Alu_deserializer (
	input wire clk,
	input wire rst_n,
	input wire in,
	input wire data_ready_in,
	output reg [71:0] out,
	output wire data_ready_out,
	output reg [6:0] err_flags
);

reg [3:0] counter;
reg [3:0] frame_counter;
reg [3:0] crc;
reg drdy;

assign data_ready_out = drdy;


always @(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            begin
                err_flags = 7'b0;
                out = 72'b0;
                drdy = 1'b0;
                counter = 4'b0;
                frame_counter = 4'b0;
                crc = 4'b0;
            end
        else 
		begin	
			if(data_ready_in)
			    begin
				drdy = 1'b0;
				counter = 4'b0;
				frame_counter = 4'b0;
				crc = 4'b0;
				err_flags = 7'b0;
			    end
			if(!drdy)
			    begin
			    if((in == 1'b0) || (counter != 4'b0))
				begin
				    if (counter == 4'h0) counter = counter + 1'b1;
				    else if (counter == 4'h1)
				        begin
				            if((in == 1'b1) && (frame_counter != 4'h8))  err_flags = 7'b1100100;
				            else if ((in == 1'b0) && (frame_counter == 4'h8)) err_flags =7'b1100100;
				            counter = counter + 1'b1;
				        end
				    else if (counter == 4'b1010)
				        begin
				            if(frame_counter == 4'h8)
				                begin
				                    frame_counter = 4'b0;
				                    if (crc != out[3:0]) err_flags =7'b1010010;
				                    if (out[6:4] != 3'b0 && out[6:4] != 3'b001 && out[6:4] != 3'b100 && out[6:4] != 3'b101) err_flags =7'b1001001;
				                    drdy = 1'b1;
				                end
				            else if(err_flags != 7'b0) drdy = 1'b1;
				            else frame_counter = frame_counter + 1'b1;
				            counter = 4'h0;
				        end
				    else
				        begin
				            if((frame_counter != 4'h8) || (counter < 4'h6))
				                begin
				                    crc[3]  = crc[2] ^ in ^ crc[3];
				                    crc[2]  = crc[1];
				                    crc[1]  = crc[0];
				                    crc[0]  = in ^ crc[3];
				                end
				            counter = counter + 1'b1;
				            out = out << 1;
				            out[0] = in;
				        end
				end
			    end

		end
    end


endmodule

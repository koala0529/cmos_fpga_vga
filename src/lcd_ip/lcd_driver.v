module lcd_driver
(  	
	//global clock
	input			clk,			//system clock
	input			rst_n,     		//sync reset
	
	//lcd interface
	output			lcd_dclk,   	//lcd pixel clock
	output			lcd_blank,		//lcd blank
	output			lcd_sync,		//lcd sync
	output	reg		lcd_hs,	    	//lcd horizontal sync
	output	reg		lcd_vs,	    	//lcd vertical sync
	output			lcd_en,			//lcd display enable
	output	[15:0]	lcd_rgb,		//lcd display data

	//user interface
	output			lcd_request,	//lcd data request
	output			lcd_framesync,	//lcd frame sync
	output	[10:0]	lcd_xpos,		//lcd horizontal coordinate
	output	[10:0]	lcd_ypos,		//lcd vertical coordinate
	input	[15:0]	lcd_data		//lcd data
);	 
`include "lcd_para.v"

/*******************************************
		SYNC--BACK--DISP--FRONT
*******************************************/
//------------------------------------------
//h_sync counter & generator
reg [10:0] hcnt; 
always @ (posedge clk or negedge rst_n)
begin
	if (!rst_n)
		begin
		hcnt <= 11'd0;
		lcd_hs <= 1'b0;
		end
	else
		begin
		//h_sync counter
        if(hcnt < `H_TOTAL - 1'b1)		//line over			
            hcnt <= hcnt + 1'b1;
        else
            hcnt <= 11'd0;
		//h_sync generator
        if((hcnt <= `H_SYNC - 1'b1))	//line sync
            lcd_hs <= 1'b0;	
        else
            lcd_hs <= 1'b1;
		end
end 


//------------------------------------------
//v_sync counter & generator
reg [10:0] vcnt;
always@(posedge clk or negedge rst_n)
begin
	if (!rst_n)
		begin
		vcnt <= 11'b0;
		lcd_vs <= 1'b0;
		end
	else if(hcnt == `H_TOTAL - 1'b1)	//line over
		begin
		//v_sync counter
		if(vcnt < `V_TOTAL - 1'b1)		//frame over
			vcnt <= vcnt + 1'b1;
		else
			vcnt <= 11'd0;
		//v_sync generator
		if((vcnt <= `V_SYNC - 1'b1))	//frame sync
            lcd_vs <= 1'b0; 
        else
            lcd_vs <= 1'b1;			
		end
end


assign	lcd_dclk = ~clk;
assign	lcd_blank = lcd_hs & lcd_vs;		
assign	lcd_sync = 1'b0;


//------------------------------------------
//ahead a clock
assign	lcd_en		=	(hcnt >= `H_SYNC + `H_BACK - 1'b1 && hcnt < `H_SYNC + `H_BACK + `H_DISP - 1'b1) &&
						(vcnt >= `V_SYNC + `V_BACK - 1'b1 && vcnt < `V_SYNC + `V_BACK + `V_DISP - 1'b1) 
						? 1'b1 : 1'b0;
assign	lcd_request	=	(hcnt >= `H_SYNC + `H_BACK -2'd2 && hcnt < `H_SYNC + `H_BACK + `H_DISP - 2'd2) &&	//ahead of schedule
						(vcnt >= `V_SYNC + `V_BACK - 1'b1 && vcnt < `V_SYNC + `V_BACK + `V_DISP - 1'b1) 
						? 1'b1 : 1'b0;
assign	lcd_xpos	= 	lcd_request ? (hcnt - (`H_SYNC + `H_BACK - 1'b1)) : 11'd0;
assign	lcd_ypos	= 	lcd_request ? (vcnt - (`V_SYNC + `V_BACK - 1'b1)) : 11'd0;
assign	lcd_rgb 	= 	lcd_request ? lcd_data+16'h0821 : 16'd0;

assign	lcd_framesync = lcd_vs;

endmodule


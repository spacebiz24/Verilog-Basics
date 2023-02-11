module comparator1bit (a, b, Prev_Great, Prev_Less, Prev_Equal, Great, Less, Equal);
input a, b;
input Prev_Great, Prev_Less, Prev_Equal;
output Great, Less, Equal;

wire Curr_Equal = ~(a ^ b);

assign Great = (a & ~b) | (Curr_Equal & Prev_Great);
assign Less = (~a & b) | (Curr_Equal & Prev_Less);
assign Equal = (Curr_Equal & Prev_Equal);
endmodule

module comparatorxbit #(parameter size = 4) (a, b, Great, Less, Equal);
input [size-1:0]a, b;
output Great, Less, Equal;

wire [size-2:0]Prev_Great, Prev_Less, Prev_Equal;

comparator1bit xbit [size-1:0] (
				.a(a), .b(b),
				.Prev_Great({Prev_Great,1'b0}), .Prev_Less({Prev_Less,1'b0}), .Prev_Equal({Prev_Equal,1'b1}),
				.Great({Great,Prev_Great}), .Less({Less,Prev_Less}), .Equal({Equal,Prev_Equal})
			       );
endmodule

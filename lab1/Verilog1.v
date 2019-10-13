module verfunctions (w1, w2, w3, w4, g, h);
	input w1, w2, w3, w4;
	output g, h;

	assign g = (w1 & w2) | (w3 & w4);
	assign h = (w1 & w3) | (w2 & w4);

endmodule
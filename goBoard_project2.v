// look-up table (LUT)
// herro

module and_gate
    (
    input i_Switch_1,
    input i_Switch_2,
    input i_Switch_3,
    input i_Switch_4,
    
    output o_LED_1,
    output o_LED_2,
    output o_LED_3,
    output o_LED_4
    );

assign o_LED_1 = i_Switch_1 & i_Switch_2;
assign o_LED_2 = i_Switch_3 & i_Switch_4;
assign o_LED_3 = i_Switch_1 & i_Switch_3;
assign o_LED_4 = i_Switch_2 & i_Switch_4;

endmodule



// notes:
    // all unassigned LEDs should be on by default but there is a way to turn them off but I forgot how I did it lol
    // I think it's something about editing the pin constraints but can't remember exactly where

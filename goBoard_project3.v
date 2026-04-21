// project 3

module registers_intro(
    input i_Clk,
    input i_Switch_1,
    output o_LED_1, o_LED_2, o_LED_3, o_LED_4       // IF AN LED IS NOT ASSIGNED A TYPE IT WILL REMAIN ON WHEN THE GO BOARD IS PROGRAMMED
);

    reg r_LED_1 = 1'b0;
    reg r_Switch_1 = 1'b0;

    always @(posedge i_Clk)

    begin
        r_Switch_1 <= i_Switch_1;                   // <= is known as a non-blocking assignment operator; the input is being assigned to the register

        if (i_Switch_1 == 1'b0 && r_Switch_1 == 1'b1)
        begin
            r_LED_1 <= ~r_LED_1;                    // ~ indicates "the inverse of"; effectively reverses the state of the LED in this situation
        end
    end

    assign o_LED_1 = r_LED_1;

endmodule



// notes:
    // remember to name the module
    // values can be assigned upon declaration of variables (even as parameters)
    // variables can also be declared together under one variable type
        // e.g. input a, b, c
            //  output x, y, z
    
    // #'b# indicates a value in binary
        // 1'b0 translates to "1 bit value of 0"
        // 4'b1101 translates to "4 bit value of 1101 (or 13 in decimal)
    // "always" is a keyword that triggers the entries in the sensitivity list
        // in this case, "posedge" would be the action item
    // posedge activates functions in the immediate subsequent body whenever the designated variable (in this case i_Clk) rises from 0 to 1
        // hence "positive edge"
        // negedge ("negative edge") works in a similar but opposite way
    // non-blocking assignments (i.e. <= within always blocks) effectively assigns the value of the latter to the former
        //e.g.
            // a = 10
            // b = 20
            // a <= b
            // a == 20

    // more on blocking vs non-blocking assignment operators
        // blocking (series) assignments "blocks" the execution of the next statement until the current one completes
            // sometimes because the following statement depends on the result of the previous
            // usually used in combinatorial logic(?)
        // non-blocking (parallel) assignments executes all parts of a body of code simultaneously
            // a more accurate way to describe the process is that all parts of the code are executed independently from one another
            // usually used in sequential logic (to determine the "state before or after the clock edge")
            // "data storage elements (such as registers) are known as sequential logic"
    
    // during the execution process, both the generic constraint file and the clock constraint files need to be added for the synthesis to run correctly
        // note that multiple constraint files can be implemented for one project
        /* in this instance, the generic constraint file (.pcf file) was placed in the top (NANDLAND) directory, 
        while the clock constraint file (.sdc file) was placed in the specific (project 3) directory */



// Further development prospects:
    // LED lights up after clicking multiple times

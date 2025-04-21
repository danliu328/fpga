// Project 1
// Make an LED blink when a button is pressed
// Entire build flow: coding (VHDL/Verilog), building FPGA bitstream, programming the Go Board

module Switches_to_LEDs
    (input i_Switch_1,
    input i_Switch_2,
    input i_Switch_3,
    input i_Switch_4,
    output o_LED_1,
    output o_LED_2,
    output o_LED_3,
    output o_LED_4);

assign o_LED_1 = i_Switch_1;
assign o_LED_2 = i_Switch_2;
assign o_LED_3 = i_Switch_3;
assign o_LED_4 = i_Switch_4;

endmodule

// Modules are blocks of code that perform some functionality
    // Can contain all the necessary code, or can be used to instantiate other modules
// Interfaces (i/o) must be defined in the code, and will be assigned to specific pins on the board
    // The assignment will be done later as a part of synthesis(?)
// The "assign" keyword is used to connect two signals together
    // Must be used outside an always block (for a later project)

// Part 1: Synthesis
//     Lattice acts as a compiler and "synthesizes" the verilog code
//     During this process, the code is converted into physical elements on the FPGA
//     Common FPGA elements include wires, LUTs, registers, memory, etc.
//     After synthesis, the process goes to place and route (P&R)

// Part 2: Place & Route (P&R)
//     P&R takes the synthesized components and places them onto the array of FPGA components
//     Not necessary for this project, but will be for designs/builds that use clocks
//     The tool needs to be told how to maps each signal in the design to a physical pin on the FPGA
//         If not told what to do during P&R, the tool will likely just erroneously assign the signals to pins at random
//     Which signal gets assigned to which pin is determined in a Constraints File

// Part 3: Building the Bitstream
//     The bitstream is the file used by the FPGA to program itself
//         No external files are required, the tool should be able to build the file when running the program
//     Bitmap is the bitstream generation tool in iCEcube2



// Further developments for consideration:
//     Making LEDs blink for various durations/in various patterns

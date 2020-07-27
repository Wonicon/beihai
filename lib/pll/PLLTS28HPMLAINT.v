// *** Silicon Creations Confidential ***
// *** Verilog Model - PLLTS28HPMLAINT v.5.1 PLL Module ***
// 
//
//  No performance guarantees or warranties may be implied with this
//  model.  The intent of this file is to provide connectivity information
//  and general behavioral information.  
//  Please contact Silicon Creations support (support@siliconcr.com) with any issues.



// 1.0	29 Jul 2014         RC      Initial Release
// 1.1	16 May 2015         RC      Updated to common core module
// 1.1	06 Jun 2015         AG      Updated to common core module for PLLTS28HPMLAINT


`timescale 1 ps / 1 fs		
`define TSTEP 1.0e-12		// Make sure TSTEP always equals timescale reference unit

`define STROBE_PERIOD 10.0e-6   // Time in seconds to check for invalid settings
// Set run time variable "USER_CONTROLLED_STROBE_PERIOD" to the strobe time (in seconds) to change this


`define JITTER_EN 1		// Set to 1 to include random jitter, 0 for no jitter
`define GATE_DELAY 15		// Average gate delay


// Define values for frequency calculations
`define TOUTVCOMAX	10000.0 * 1.0e-12 / `TSTEP	// 100MHz
`define TOUTVCOMIN	300.0 * 1.0e-12 / `TSTEP	// Model allows operation to 3.(3)GHz.  Spec is 2.5GHz.
`define TREFMAX		100000.0 * 1.0e-12 / `TSTEP	// Initial value for reference clock period.  Used until first period can be measured.

// Programming checks

`define FVCOMIN 	625e6				// Minimum specified VCO frequency
`define FVCOMAX     	2.5e9				// Maximum specified VCO frequency
`define FPFDMIN  	5e6				// Minimum specified PFD frequency in integer mode
`define FPFDMAX	 	200e6				// Maximum specified PFD frequency
`define FBDIVMIN 	16.0				// Minimum feedback divide value in integer mode
`define FBDIVMAX 	`FVCOMAX / `FPFDMIN		// Maximum feedback divide value in integer mode

// Digital timing
`define	SETUP		4.0 / `FVCOMIN / `TSTEP		// Setup time for FBDIV and FRAC inputs relative to CLKSSCG
`define	HOLD		0				// Hold time for FBDIV and FRAC inputs relative to CLKSSCG

// Analog Parameters
`define IVCOMAX     	1.27e-3				// VCO current at maximum VCO frequency
`define ICP         	4.0e-6				// Initial condition for charge pump current
`define CINT        	60e-12				// Loop filter integral capacitor
`define KVI         	4.0 * `FVCOMAX			// Integral path VCO voltage gain (Hz/V)
`define ICHRATIO     	256.0				// Ratio of VCO current to charge pump current
`define DACRATIO    	0.25				// Ratio of VCO current to proportional charge pump current in integer mode
`define LOCKCYCLES     	256				// Number of PFD periods without a cycle slip before LOCK goes high
`define PJMIN_PS       	0.5				// RMS random period jitter at maximum VCO frequency



module PLLTS28HPMLAINT (BYPASS, DSMPD, FBDIV, FOUTPOSTDIVPD, FOUTVCOPD, FREF, PD, 
			POSTDIV1, POSTDIV2, REFDIV, CLKSSCG, FOUTPOSTDIV, FOUTVCO, LOCK);

// Power Supplies
supply1 VDD;			// Core Voltage Digital Power Supply (set to 1'b1)
supply1 VDDA;			// Core Voltage Analog Power Supply (set to 1'b1)
supply0 VSS;			// 0V Ground 	     (set to 1'b0)

// Input Signals
input FREF;			// Reference Clock
input [5:0] REFDIV;		// Reference Clock Divide Value

input [11:0] FBDIV;		// Feedback Divide Value

input [2:0] POSTDIV1;		// First Post Divide Value
input [2:0] POSTDIV2;		// Second Post Divide Value (Output Frequency is [FVCO / POSTDIV1 / POSTDIV2])

input PD;			// Global power down
input DSMPD;                    // Power down CLKSSCG clock (DSMPD=1'b0, CLKSSCG is on.  DSMPD=1'b1, CLKSSCG=0)
input FOUTPOSTDIVPD;            // Power down FOUTPOSTDIV
input FOUTVCOPD;		// Power down FOUTVCO
input BYPASS;			// PLL Bypass.  FREF bypasses PLL to FOUTPOSTDIV if FOUTPOSTDIVPD=0.


// Output Signals
output FOUTVCO;			// Buffered VCO Output Clock
output FOUTPOSTDIV;		// Post Divide Clock

output LOCK;			// PLL Lock Indicator (LOCK indicates no cycle slips in multiple
				//  consecutive FREF/REFDIV cycles)

output CLKSSCG;			// Spread Spectrum Clock Output (frequency = FREF/REFDIV when locked)

specify

	$setup(FBDIV[11], posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[10], posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[9],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[8],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[7],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[6],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[5],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[4],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[3],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[2],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[1],  posedge CLKSSCG, `SETUP); 
	$setup(FBDIV[0],  posedge CLKSSCG, `SETUP); 
	$hold(posedge CLKSSCG, FBDIV[11], `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[10], `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[9],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[8],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[7],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[6],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[5],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[4],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[3],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[2],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[1],  `HOLD); 
	$hold(posedge CLKSSCG, FBDIV[0],  `HOLD); 

endspecify

PLLCORELAINT PLLCORELAINT (.BYPASS(BYPASS), .DSMPD(DSMPD), .FBDIV(FBDIV),
	.FOUTPOSTDIVPD(FOUTPOSTDIVPD), .FOUTVCOPD(FOUTVCOPD), .FREF(FREF), .PD(PD), 
	.POSTDIV1(POSTDIV1), .POSTDIV2(POSTDIV2), .REFDIV(REFDIV), .CLKSSCG(CLKSSCG),
	.FOUTPOSTDIV(FOUTPOSTDIV), .FOUTVCO(FOUTVCO), .LOCK(LOCK));

endmodule

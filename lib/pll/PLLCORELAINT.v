// *** Silicon Creations Confidential ***
// *** Verilog Model - PLLCORELAINT v.5.0 Core PLL Module ***
//
//  No performance guarantees or warranties may be implied with this
//  model.  The intent of this file is to provide connectivity information
//  and general behavioral information.  
//  Please contact Silicon Creations support (support@siliconcr.com) with any issues.



// 1.0	29 Jul 2014         RC      Initial Release
// 1.1	16 May 2015         RC      Updated to common core module
// 1.2	21 Jul 2016         RC      Corrected logic for postdivcount

`timescale 1 ps / 1 fs		


//liutong
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



module PLLCORELAINT (BYPASS, DSMPD, FBDIV, FOUTPOSTDIVPD, FOUTVCOPD, FREF, PD, 
			POSTDIV1, POSTDIV2, REFDIV, CLKSSCG, FOUTPOSTDIV, FOUTVCO, LOCK);

// Power Supplies
supply1 VDD;			// Core Voltage Digital Power Supply (set to 1'b1)
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


// Define values for frequency calculations
real toutvco		= `TOUTVCOMAX;	
real toutvco_int	= `TOUTVCOMAX;
real toutvco_jit	= `TOUTVCOMAX;
real toutvcomin		= `TOUTVCOMIN;	
real toutvcomax		= `TOUTVCOMAX;	// Model requires a minimum VCO frequency

// Programming checks

real fvcomin 	 	= `FVCOMIN;
real fvcomax     	= `FVCOMAX;
real fvcoprog    	= 0;
real fpfd 	 	= 0;
real fpfdmin  		= `FPFDMIN;
real fpfdmax	 	= `FPFDMAX;
real fbdivmin  		= `FBDIVMIN;
real fbdivmax 		= `FBDIVMAX;

integer refdivval;
integer fbdivval;
integer postdiv1val;
integer postdiv2val;

always @(REFDIV) begin
	if (REFDIV > 6'b0) begin
		refdivval = REFDIV;
	end
	else begin
		refdivval = 1;
	end
end
always @(FBDIV) begin
	if (FBDIV > 7) begin
		fbdivval = FBDIV;
	end
	else begin
		fbdivval = 4096 - FBDIV;
	end
end
always @(POSTDIV1) begin
	if (POSTDIV1 > 0) begin
		postdiv1val = POSTDIV1;
	end
	else begin
		postdiv1val = 1;
	end
end
always @(POSTDIV2) begin
	if (POSTDIV2 > 0) begin
		postdiv2val = POSTDIV2;
	end
	else begin
		postdiv2val = 1;
	end
end

reg	LOCK;

time trefin0, trefin1;
real infreq;
real inperiod;
always@(posedge FREF) begin
        trefin1 = $time;
        if (trefin0 > 0) begin
                inperiod = (trefin1 - trefin0) ;
        end
        if (inperiod > 0) begin
                infreq = 1 / inperiod / `TSTEP ;
        end
	#1
        trefin0 = trefin1;
end

real user_strobe_period_sec;
real strobe_period_val_sec;
initial begin
	if($value$plusargs("USER_CONTROLLED_STROBE_PERIOD=%g", user_strobe_period_sec)) begin
		strobe_period_val_sec = user_strobe_period_sec;
		$display("User defined strobe period is %g seconds", strobe_period_val_sec);
	end
	else begin
		strobe_period_val_sec = `STROBE_PERIOD;
		$display("Default strobe period is %g seconds", strobe_period_val_sec);
	end
end

always begin
	// check every `STROBE_PERIOD for invalid settings
	# (strobe_period_val_sec / `TSTEP)
	if (!PD) begin
		// Calculate PFD frequency
		if (inperiod > 0) begin
			fpfd	= infreq / refdivval;
		end

		// Check minimum PFD Frequency
		if (fpfd < (fpfdmin * 0.999)) begin
			$display("Invalid PFD Frequency = %.2f MHz at time %.1f ns",fpfd/1e6, $time / (1.0e-9 / `TSTEP));
			$display("Minimum PFD Frequency = %.2f MHz",fpfdmin/1e6);
		end
		
		// Check maximum PFD Frequency
		fpfdmax	 = 1/(fbdivmin*toutvco)/`TSTEP;
		if (fpfd > (fpfdmax * 1.001)) begin
			$display("Invalid PFD Frequency = %.2f MHz at time %.1f ns",fpfd/1e6, $time / (1.0e-9 / `TSTEP));
			$display("Maximum PFD Frequency = %.2f MHz when VCO frequency is %.2f MHz",fpfdmax/1e6, 1e-6/toutvco/`TSTEP);
		end
		
		// Check FBDIV Value
		fvcoprog = fpfd*$itor(FBDIV);
		if ($itor(FBDIV) < (fbdivmin * 0.999)) begin
			$display("Invalid FBDIV Value = %1d at time %.1f ns",$itor(FBDIV), $time / (1.0e-9 / `TSTEP));
			$display("Minimum FBDIV Value = %1d",fbdivmin);
		end
		if ($itor(FBDIV) > (fbdivmax * 1.001)) begin
			$display("Invalid FBDIV Value = %1d at time %.1f ns",$itor(FBDIV), $time / (1.0e-9 / `TSTEP));
			$display("Maximum FBDIV Value = %1d",fbdivmax);
		end

		// Check VCO Frequency
		if (fvcoprog < (fvcomin * 0.999)) begin
			$display("Invalid VCO Frequency = %.2f MHz at time %.1f ns",fvcoprog/1e6, $time / (1.0e-9 / `TSTEP));
			$display("Minimum VCO Frequency = %.2f MHz",fvcomin/1e6);
		end
		if (fvcoprog > (fvcomax * 1.001)) begin
			$display("Invalid VCO Frequency = %.2f MHz at time %.1f ns",fvcoprog/1e6, $time / (1.0e-9 / `TSTEP));
			$display("Maximum VCO Frequency = %.2f MHz",fvcomax/1e6);
		end

		// Check Post Divide Setting
		if ($itor(POSTDIV2) > $itor(POSTDIV1)) begin
			$display("POSTDIV1 should be greater than or equal to POSTDIV2");
		end
		if (POSTDIV1 == 3'b0) begin
			$display("POSTDIV1 is set to 0.  It will default to divide-by-1");
		end
		if (POSTDIV2 == 3'b0) begin
			$display("POSTDIV2 is set to 0.  It will default to divide-by-1");
		end
		if (REFDIV == 6'b0) begin
			$display("REFDIV is set to 0.  It will default to divide-by-1");
		end
	end
end


// Initialize Output Voltages

wire enable;			// enable == 1 when PD=0, VDDHV=1, VDDREF=1, VDDPOST=1, and VSS=0
assign enable = (~PD && VDD && ~VSS);

reg	FOUTVCOint; 	
assign	FOUTVCO = (enable && ~FOUTVCOPD) ? FOUTVCOint : 1'b0;
reg FOUTPOSTDIVi; 	
reg FOUTPOSTDIVext; 	


initial begin
	FOUTVCOint 	= 1'b0;
	FOUTPOSTDIVi 	= 1'b0;
	
	LOCK	 	= 1'b0;

        FOUTPOSTDIVext  = 1'b0;
end

always @(FOUTPOSTDIVi)
	if (enable && ~FOUTPOSTDIVPD) FOUTPOSTDIVext = FOUTPOSTDIVi;
always @(PD or FOUTPOSTDIVPD) begin
        if (PD || FOUTPOSTDIVPD) begin
                FOUTPOSTDIVext  = 1'b0;
        end
end

// generate PFD input voltages (ref_in, div_in)

integer refdivcount = 1;
reg ref_in_int;
wire ref_in;
always @(posedge FREF) begin
	ref_in_int = 0;
	if (refdivcount > 1) refdivcount = refdivcount - 1;
	else begin
		refdivcount = refdivval;
		ref_in_int = 1;
	end
end
assign ref_in = enable ? ((refdivval == 1) ? FREF : ref_in_int) : 1'b0;

reg div_in;
real pllratio = `FBDIVMIN;
always @(posedge div_in) begin
	pllratio = fbdivval;
	if (pllratio < `FBDIVMIN) pllratio = `FBDIVMIN;
end

// Feedback Divider

integer fbdivcount = 1;

always @(posedge FOUTVCOint) begin
	div_in = 0;
	if (fbdivcount > 1) fbdivcount = fbdivcount - 1;
	else begin
		if (enable) begin
			div_in = 1;
			fbdivcount = fbdivval;
		end
	end
end

// Behavioral Phase/Frequency Detector
real refperiod   = `TREFMAX;
real phaseerror;
real ivcomax     = `IVCOMAX;
real icp         = `ICP;
real cint        = `CINT;
real kvi         = `KVI;
parameter dacratio = `DACRATIO;
time tref0, tref1;
time tpfd0, tpfd1;
reg pfd_up, pfd_down;
integer refcount;
initial begin
	pfd_up = 0;
	pfd_down = 0;
	refcount = 0;
end
always @(enable) begin
	if (~enable) begin
		pfd_up = 0;
        	pfd_down = 0;
		refcount=0;
		LOCK = 0;
		toutvco = toutvcomax;
	end
end

always @(posedge enable) begin
		tpfd0=$time;
		toutvco_int=toutvcomax;
		phaseerror=0;
		LOCK=0;
		refcount=0;
end

real freq1, freq_step;

always @(posedge ref_in) begin
	tref1 = $time;
        if (tref0 > 0) refperiod = (tref1 - tref0);
	tref0 = tref1;

	if (enable) begin
		if (pfd_up) begin		// two consecutive ref_in edges with no div_in edge
			tpfd1 = $time;
			refcount = 0;		// cycle slip, reset LOCK detector
			LOCK = 0;
			if (tpfd0 > 0) phaseerror = tpfd1 - tpfd0;
			tpfd0 = tpfd1;

			// Calculate period due to integral path  [1 / (old freq + freq step)]
			toutvco_int = (1 / ((1 / (toutvco_int * `TSTEP)) + ((phaseerror * `TSTEP * icp * kvi) / cint))) / `TSTEP;

			// Calculate phase shift due to proportional path and distribute it over subsequent period
			toutvco = toutvco_int - (dacratio * phaseerror / pllratio);
		end
		else begin
			if (pfd_down) begin	// ref_in edge AFTER div_in edge
				tpfd1 = $time;
				phaseerror = tpfd1 - tpfd0;
				pfd_up = 0;	// reset PFD	
				pfd_down = 0;	

				// Calculate period due to integral path  [1 / (old freq - freq step)]
				freq1 = 1 / (toutvco_int * `TSTEP);
				freq_step = phaseerror * `TSTEP * icp * kvi / cint;
				if (freq1 < 1.001 * freq_step) begin
					toutvco_int = toutvcomax;
				end 
				else begin
					toutvco_int = (1 / ((1 / (toutvco_int * `TSTEP)) - ((phaseerror * `TSTEP * icp * kvi) / cint))) / `TSTEP;
				end

				// Calculate phase shift due to proportional path and distribute it over subsequent period
				toutvco = toutvco_int + (dacratio * phaseerror / pllratio);
		
				if (refcount < `LOCKCYCLES) begin	// Lock Detector
					LOCK = 0;
					refcount = refcount + 1;
				end
				else    LOCK = 1; 
			end
			else begin		// ref_in edge BEFORE div_in edge
				pfd_up = 1;
				tpfd0 = $time;
			end
		end
			if (toutvco < toutvcomin) begin
				toutvco = toutvcomin;
			end
	end
	else begin	// reset everything
		tpfd0=0;
		toutvco_int=toutvcomax;
		phaseerror=0;
		LOCK=0;
		refcount=0;
	end
end
always @(posedge div_in) begin
	if (enable) begin
		if (pfd_down) begin		// two consecutive div_in edges with no ref_in edge
			tpfd1 = $time;		
			refcount = 0;		// cycle slip, reset LOCK detector
			LOCK = 0;
			if (tpfd0 > 0) phaseerror = tpfd1 - tpfd0;
			tpfd0 = tpfd1;

			// Calculate period due to integral path  [1 / (old freq - freq step)]
			freq1 = 1 / (toutvco_int * `TSTEP);
			freq_step = phaseerror * `TSTEP * icp * kvi / cint;
			if (freq1 < 1.001 * freq_step) begin
				toutvco_int = toutvcomax;
			end
			else begin
				toutvco_int = (1 / ((1 / (toutvco_int * `TSTEP)) - ((phaseerror * `TSTEP * icp * kvi) / cint))) / `TSTEP;
			end

			// Calculate phase shift due to proportional path and distribute it over subsequent period
			toutvco = toutvco_int + (dacratio * phaseerror / pllratio);
		end
		else begin
			if (pfd_up) begin // div_in edge AFTER ref_in edge
				tpfd1 = $time;
				phaseerror = tpfd1 - tpfd0;
				pfd_up = 0;	// reset PFD	
				pfd_down = 0;	

				// Calculate period due to integral path  [1 / (old freq + freq step)]
				toutvco_int = (1 / ((1 / (toutvco_int * `TSTEP)) + ((phaseerror * `TSTEP * icp * kvi) / cint))) / `TSTEP;

				// Calculate phase shift due to proportional path and distribute it over subsequent period
				toutvco = toutvco_int - (dacratio * phaseerror / pllratio);

				if (refcount < `LOCKCYCLES) begin	// Lock Detector
					LOCK = 0;
					refcount = refcount + 1;
				end
				else    LOCK = 1; 
			end
			else begin
				pfd_down = 1;		// div_in edge BEFORE ref_in edge
				tpfd0 = $time;
			end
		end
			if (toutvco < toutvcomin) begin
				toutvco = toutvcomin;
			end
	end
	else begin	// reset everything
		tpfd0=0;
		toutvco_int=toutvcomax;
		phaseerror=0;
		LOCK=0;
		refcount=0;
	end
end

real icp_int;
always @(toutvco_int) begin
        icp_int = ivcomax / ((fvcomax * toutvco * `TSTEP)**1.5) / `ICHRATIO;
        icp = LOCK ? icp_int : (icp_int < `ICP) ? `ICP : icp_int;
end


parameter two_to_31 = 2147483648.0;
real jitter = `PJMIN_PS; // jitter [ps/cycle]
real tjit, rand1;
always @(posedge FOUTVCOint) begin
        // each of $random/2^31 in range [-1 .. 1] with std of 2/(12^0.5)
        // for nine, to correct std back to 1, divide by 2 * ((9 / 12) ^ 0.5)
        rand1 = ( $random / two_to_31 + $random / two_to_31 + $random / two_to_31
                + $random / two_to_31 + $random / two_to_31 + $random / two_to_31
                + $random / two_to_31 + $random / two_to_31 + $random / two_to_31
                ) / 1.73205;

        tjit = jitter*rand1*`JITTER_EN;
        toutvco_jit = toutvco + tjit;
end


// Set Parameter Limits

always @(toutvco_int) begin
	// Cap VCO frequency
	if (toutvco_int < toutvcomin) begin
		toutvco_int = toutvcomin;	
	end

	if (toutvco_int > toutvcomax) begin
		toutvco_int = toutvcomax;	
	end
end


// Define Output Clocks 

wire FREFi;
assign #(12 * `GATE_DELAY) FREFi = FOUTPOSTDIVPD ? 1'b0 : FREF;
assign FOUTPOSTDIV = (BYPASS ? FREFi : FOUTPOSTDIVext);

always 
	#(toutvco_jit / 2.0)	FOUTVCOint = ~FOUTVCOint;
integer postdivcount = 1;
always @(FOUTVCOint) begin
	
	if (postdivcount > 1) begin
		if (postdivcount < (postdiv1val * postdiv2val + 1)) postdivcount = postdivcount - 1;
		else postdivcount = postdiv1val * postdiv2val;
	end
	else begin
		FOUTPOSTDIVi = ~FOUTPOSTDIVi;
		postdivcount = postdiv1val * postdiv2val;
	end
end	


// Define Spread Spectrum Clock
reg 	clksscg_int;
integer clksscg_count =	0;

initial begin
	clksscg_int = 0;
end

always @(posedge div_in) begin
	clksscg_int = 1;
	clksscg_count = 3;
end

always @(posedge FOUTVCOint) begin
	if (clksscg_count > 0) clksscg_count = clksscg_count - 1;
	else clksscg_int = 0;
end
assign CLKSSCG = DSMPD ? 1'b0 : clksscg_int;

endmodule

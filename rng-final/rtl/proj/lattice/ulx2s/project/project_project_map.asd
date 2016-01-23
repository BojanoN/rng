[ActiveSupport MAP]
Device = LFXP2-8E;
Package = TQFP144;
Performance = 6;
LUTS_avail = 8352;
LUTS_used = 1651;
FF_avail = 6364;
FF_used = 951;
INPUT_LVCMOS33 = 6;
OUTPUT_LVCMOS33 = 42;
IO_avail = 100;
IO_used = 48;
PLL_avail = 2;
PLL_used = 2;
EBR_avail = 12;
EBR_used = 2;
;
; start of DSP statistics
MULT36X36B = 0;
MULT18X18B = 0;
MULT18X18MACB = 0;
MULT18X18ADDSUBB = 0;
MULT18X18ADDSUBSUMB = 0;
MULT9X9B = 0;
MULT9X9ADDSUBB = 0;
MULT9X9ADDSUBSUMB = 0;
DSP_avail = 32;
DSP_used = 0;
; end of DSP statistics
;
; Begin EBR Section
Instance_Name = digital_fm_radio/U3/I2/dout_5_0_0;
Type = PDPW16KB;
Width = 14;
Depth_R = 512;
REGMODE = NOREG;
RESETMODE = SYNC;
GSR = DISABLED;
Instance_Name = digital_fm_radio/U3/I2/dout_2_0_0;
Type = PDPW16KB;
Width = 7;
Depth_R = 512;
REGMODE = NOREG;
RESETMODE = SYNC;
GSR = DISABLED;
; End EBR Section
; Begin PLL Section
Instance_Name = digital_fm_radio/U2/pll_50M_360M_10M/PLLInst_0;
Type = EPLLD;
Output_Clock(P)_Actual_Frequency = 360.0000;
CLKOP_BYPASS = DISABLED;
CLKOS_BYPASS = DISABLED;
CLKOK_BYPASS = DISABLED;
CLKI_Divider = 5;
CLKFB_Divider = 36;
CLKOP_Divider = 2;
CLKOK_Divider = 36;
CLKOS_Phase_Shift_(degree) = 0.0;
CLKOS_Duty_Cycle_(*1/16) = 8;
Phase_Duty_Control = STATIC;
Instance_Name = digital_fm_radio/U2/pll_25M_50M_8M33/PLLInst_0;
Type = EPLLD;
Output_Clock(P)_Actual_Frequency = 50.0000;
CLKOP_BYPASS = DISABLED;
CLKOS_BYPASS = DISABLED;
CLKOK_BYPASS = DISABLED;
CLKI_Divider = 1;
CLKFB_Divider = 2;
CLKOP_Divider = 16;
CLKOK_Divider = 6;
CLKOS_Phase_Shift_(degree) = 0.0;
CLKOS_Duty_Cycle_(*1/16) = 8;
Phase_Duty_Control = STATIC;
; End PLL Section

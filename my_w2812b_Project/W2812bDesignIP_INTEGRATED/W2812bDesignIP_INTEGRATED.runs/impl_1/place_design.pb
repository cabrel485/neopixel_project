
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
32default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
32default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
32default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2384.4572default:default2
0.0002default:default2
892default:default2
8802default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: e9496fd7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 89 ; free virtual = 8802default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2384.4572default:default2
0.0002default:default2
892default:default2
8802default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: e0acb438
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8532default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 110bdc0df
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 97 ; free virtual = 8562default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 110bdc0df
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 97 ; free virtual = 8562default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 110bdc0df
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 97 ; free virtual = 8562default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 1314b28c9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 93 ; free virtual = 8532default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[28]?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[28]2default:default2
12602default:default2
3972default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[27]?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[27]2default:default2
17322default:default2
4852default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[26]?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[26]2default:default2
17322default:default2
4852default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[25]?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[25]2default:default2
17322default:default2
4852default:default8Z32-1022h px? 
?
?Very high fanout net '%s' has -through timing constraint on its net segments or hierarchy pins. To preserve -through timing constraint its fanout number considered in optimization is changed from %s to %s and it is not considered a very high fanout net anymore. Please consider modifying/removing the '-through' timing constraint on the net segment or hierarchy pin.
540*physynth2?
?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[24]?W2812b_design_1_i/processing_system7_0/inst/M_AXI_GP0_WDATA[24]2default:default2
17322default:default2
4852default:default8Z32-1022h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px? 
?
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px? 
?
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2384.4572default:default2
0.0002default:default2
792default:default2
8412default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
S
>Phase 2.2.1 Physical Synthesis In Placer | Checksum: 72703e83
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:06 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 79 ; free virtual = 8422default:defaulth px? 
J
5Phase 2.2 Global Placement Core | Checksum: eb4d5c7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:06 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8412default:defaulth px? 
C
.Phase 2 Global Placement | Checksum: eb4d5c7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:06 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 79 ; free virtual = 8432default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 155b648af
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:11 ; elapsed = 00:00:07 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 79 ; free virtual = 8432default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 13127c098
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:12 ; elapsed = 00:00:08 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8422default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1a999d967
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:12 ; elapsed = 00:00:08 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8422default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1b61f312e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:12 ; elapsed = 00:00:08 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8422default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.5 Small Shape Detail Placement | Checksum: ff11f34c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:09 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 74 ; free virtual = 8392default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.6 Re-assign LUT pins | Checksum: fb02334d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:09 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 74 ; free virtual = 8392default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 14f7b9b44
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:09 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 74 ; free virtual = 8392default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 14f7b9b44
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:09 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 74 ; free virtual = 8392default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
U
@Post Placement Optimization Initialization | Checksum: c390d597
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: c390d597
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 75 ; free virtual = 8412default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
2.9492default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 10a9cfa59
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 75 ; free virtual = 8412default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 10a9cfa59
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 75 ; free virtual = 8412default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 10a9cfa59
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8422default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 10a9cfa59
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:16 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8422default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2384.4572default:default2
0.0002default:default2
772default:default2
8422default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 14fdd668d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:16 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8422default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 14fdd668d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:16 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8432default:defaulth px? 
>
)Ending Placer Task | Checksum: 107f106e7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:16 ; elapsed = 00:00:10 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 77 ; free virtual = 8432default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
602default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:00:172default:default2
00:00:122default:default2
2384.4572default:default2
0.0002default:default2
862default:default2
8522default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2384.4572default:default2
0.0002default:default2
862default:default2
8522default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.792default:default2
00:00:00.272default:default2
2384.4572default:default2
0.0002default:default2
682default:default2
8432default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/wilson/Documents/Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.runs/impl_1/W2812b_design_1_wrapper_placed.dcp2default:defaultZ17-1381h px? 
r
%s4*runtcl2V
BExecuting : report_io -file W2812b_design_1_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.16 ; elapsed = 00:00:00.20 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 84 ; free virtual = 840
*commonh px? 
?
%s4*runtcl2?
?Executing : report_utilization -file W2812b_design_1_wrapper_utilization_placed.rpt -pb W2812b_design_1_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2s
_Executing : report_control_sets -verbose -file W2812b_design_1_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.18 . Memory (MB): peak = 2384.457 ; gain = 0.000 ; free physical = 95 ; free virtual = 850
*commonh px? 


End Record
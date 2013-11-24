nrs - Noise Reduction System
===

#How to run:  
Make sure you have installed hspice and set the PATH.

##Windows - execute run.bat  
##Linux - execute run.sh

#Files#:  
##Netlists##:  
###constants.cir###: application critical constants (center frequency, PI etc).  
###deemp.cir###: De-Emphasis subcircuit.  
###gain.cir###: Inverting Op-Amp subcircuit.  
###hp.cir###: 2nd order Butterworth active high-pass filter subcircuit.  
###joint.cir###: voltage follower subcircuit (not used).  
###lp.cir###: 2nd order Butterworth active low-pass filter subcircuit.  
###nrs.cir###: Noise Reduction System (main).  
###popamp.cir###: 741 RC pseudo op-amp subcircuit.  
###preemp.cir###: Pre-Emphasis subcircuit.  
###sum.cir###: Summing Op-Amp subcircuit.  
###TestDeemp.cir###: Tests De-Emphasis.  
###TestPreemp.cir###: Tests Pre-Emphasis.  

##Logs##:  
###nrs.log###: hspice output from nrs.cir.  
###TestDeemp.log###: hspice output from TestDeemp.cir.  
###TestPreemp.log###: hspice output from TestPreemp.cir.  

##Excel##:  
###parts.xlsx###: used for price/parts analysis.  

##Executables##:  
###run.bat###: used for running nrs.cir, TestDeemp.cir, TestPreemp.cir on Windows.  
###run.sh###: used for running nrs.cir, TestDeemp.cir, TestPreemp.cir on Linux.  

##LICENSE files##:  
###LICENSE###: GNU v2.  

##Cosmos Graph##:  
###nrs.ai\_graph###: used for analyzing response. Requires CosmosScope.  

##Directories##:  
###nrs###: extra information for CosmosScope to open nrs.ai\_graph.  
###.git###: Git magic directory.

##GitHub##:  
###.gitignore###: ignored extensions.  
###\_gitignore###: same as above.  

##\*.ac0, \*.ic0, \*.st0, \*.pa0##:  
hspice analysis save files.  

##.DS\_Store##: github datastore.  

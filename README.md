nrs - Noise Reduction System
===

#How to run:  
**Make sure you have installed hspice and set the PATH.**

**Windows - execute run.bat**  
**Linux - execute run.sh**

#Files:  
##Netlists:  
**constants.cir**: application critical constants (center frequency, PI etc).  
**deemp.cir**: De-Emphasis subcircuit.  
**gain.cir**: Inverting Op-Amp subcircuit.  
**hp.cir**: 2nd order Butterworth active high-pass filter subcircuit.  
**joint.cir**: voltage follower subcircuit (not used).  
**lp.cir**: 2nd order Butterworth active low-pass filter subcircuit.  
**nrs.cir**: Noise Reduction System (main).  
**popamp.cir**: 741 RC pseudo op-amp subcircuit.  
**preemp.cir**: Pre-Emphasis subcircuit.  
**sum.cir**: Summing Op-Amp subcircuit.  
**TestDeemp.cir**: Tests De-Emphasis.  
**TestPreemp.cir**: Tests Pre-Emphasis.  

##Logs:  
**nrs.log**: hspice output from nrs.cir.  
**TestDeemp.log**: hspice output from TestDeemp.cir.  
**TestPreemp.log**: hspice output from TestPreemp.cir.  

##Excel:  
**parts.xlsx**: used for price/parts analysis.  

##Executables:  
**run.bat**: used for running nrs.cir, TestDeemp.cir, TestPreemp.cir on Windows.  
**run.sh**: used for running nrs.cir, TestDeemp.cir, TestPreemp.cir on Linux.  

##LICENSE files:  
**LICENSE**: GNU v2.  

##Cosmos Graph:  
**nrs.ai\_graph**: used for analyzing response. Requires CosmosScope.  

##Directories:  
**nrs**: extra information for CosmosScope to open nrs.ai\_graph.  
**.git**: Git magic directory.

##GitHub:  
**.gitignore**: ignored extensions.  
**\_gitignore**: same as above.  

##\*.ac0, \*.ic0, \*.st0, \*.pa0:  
**hspice analysis save files.**  

##.DS\_Store:  
**github datastore.**  
##Lastest Output
```
 ****** HSPICE -- H-2013.03 32-BIT (Mar  7 2013) win32 ******                   
  Copyright (C) 2013 Synopsys, Inc. All Rights Reserved.                        
  Unpublished-rights reserved under US copyright laws.
  This program is protected by law and is subject to the
  terms and conditions of the license agreement from Synopsys.
  Use of this program is your acceptance to be bound by the
  license agreement. HSPICE is the trademark of Synopsys, Inc.
  Input File: nrs.cir                                                           
  Command line options: nrs.cir
  lic:  
  lic: FLEXlm: v10.9.8 
  lic: USER:   jun                  HOSTNAME: jun@localhost 
  lic: HOSTID: "000000000000 000000000000 28cfe91bd273 320016218600 320016218601
  0acfe91bd273 001c420
  lic: Using FLEXlm license file: 
  lic: 27000@Juns-MacBook-Pro.local 
  lic: Checkout 1 hspice 
  lic: License/Maintenance for hspice will expire on 31-dec-2019/2019.12 
  lic: NODE LOCKED license on hostid "000000000000 000000000000 28cfe91bd273 320
 016218600 32001621860
  lic:   
 Init: read install configuration file: C:\synopsys\Hspice_H-2013.03\meta.cfg
 scientific notation:
 a=10**-18  f=10**-15  p=10**-12  n=10**-9  u=10**-6
 m=10**-3   k=10**3    x=10**6    g=10**9 
1****** HSPICE -- H-2013.03 32-BIT (Mar  7 2013) win32 ******                   
 ******  
 noise reduction system - main

  ******  circuit name directory
 circuit number to circuit name directory
   number circuitname                     definition         multiplier
        0 main circuit
        1 xpe.                            preemp             1.00 
        2 xde.                            deemp              1.00 
        3 xpe.xhp.                        hp                 1.00 
        4 xpe.xlp.                        lp                 1.00 
        5 xpe.xg.                         gain               1.00 
        6 xde.xlp.                        lp                 1.00 
        7 xde.xhp.                        hp                 1.00 
        8 xde.xsum.                       sum                1.00 
        9 xde.xg.                         gain               1.00 
       10 xpe.xhp.x1.                     popamp             1.00 
       11 xpe.xlp.x1.                     popamp             1.00 
       12 xpe.xg.x1.                      popamp             1.00 
       13 xde.xlp.x1.                     popamp             1.00 
       14 xde.xhp.x1.                     popamp             1.00 
       15 xde.xsum.x1.                    popamp             1.00 
       16 xde.xg.x1.                      popamp             1.00 


 circuit parameter definitions
  parameter          =  value 

     0:pi                                                      =   3.1416       
     0:w0                                                      =   6.2832k      
     1:khf                                                     =   3.3301k      
     1:klf                                                     =  11.8551k      
     2:khf                                                     =  64.7751k      
     2:klf                                                     = 609.4690       
     3:kf                                                      =   3.3301k      
     3:c                                                       =   2.0000n      
     3:km                                                      = 150.1462k      
     4:kf                                                      =  11.8551k      
     4:r                                                       = 120.0000k      
     4:km                                                      = 120.0000k      
     5:a                                                       =  28.1838       
     6:kf                                                      = 609.4690       
     6:r                                                       = 120.0000k      
     6:km                                                      = 120.0000k      
     7:kf                                                      =  64.7751k      
     7:c                                                       =   2.0000n      
     7:km                                                      =   7.7190k      
     9:a                                                       =   1.4962       




 constants  - tnom         kt           vt           gapsi        ni
            298.15000    4.1163e-21    25.69184m     1.11562    1.2565e+16 
1****** HSPICE -- H-2013.03 32-BIT (Mar  7 2013) win32 ******                   
 ******  
 noise reduction system - main

  ******  circuit element summary tnom=  25.000 temp=  25.000 *****


 **** resistors

  
  
                                                              
 element name        3:r1       3:r2       4:r1       4:r2    
 node1               3:1        3:p        1:1        4:1     
 node2               1:1        0:0        4:1        4:p     
 model                                                        
 res eff           106.1533k  212.3067k  120.0000k  120.0000k 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 m                   1.0000     1.0000     1.0000     1.0000  
 ac                106.1533k  212.3067k  120.0000k  120.0000k 
 temp               25.0000    25.0000    25.0000    25.0000  
 l                   0.         0.         0.         0.      
 w                   0.         0.         0.         0.      
 cap                 0.         0.         0.         0.      
 noise            1.000e+00  1.000e+00  1.000e+00  1.000e+00  
  
  
                                                              
 element name        5:rf       5:ri       6:r1       6:r2    
 node1               5:n        1:2        0:2        6:1     
 node2               0:2        5:n        6:1        6:p     
 model                                                        
 res eff            28.1838k    1.0000k  120.0000k  120.0000k 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 m                   1.0000     1.0000     1.0000     1.0000  
 ac                 28.1838k    1.0000k  120.0000k  120.0000k 
 temp               25.0000    25.0000    25.0000    25.0000  
 l                   0.         0.         0.         0.      
 w                   0.         0.         0.         0.      
 cap                 0.         0.         0.         0.      
 noise            1.000e+00  1.000e+00  1.000e+00  1.000e+00  
  
  
                                                              
 element name        7:r1       7:r2       8:r1       8:r2    
 node1               7:1        7:p        2:1        2:2     
 node2               2:2        0:0        8:n        8:n     
 model                                                        
 res eff             5.4573k   10.9147k   10.0000k   10.0000k 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 m                   1.0000     1.0000     1.0000     1.0000  
 ac                  5.4573k   10.9147k   10.0000k   10.0000k 
 temp               25.0000    25.0000    25.0000    25.0000  
 l                   0.         0.         0.         0.      
 w                   0.         0.         0.         0.      
 cap                 0.         0.         0.         0.      
 noise            1.000e+00  1.000e+00  1.000e+00  1.000e+00  
  
  
                                                              
 element name        8:rf       9:rf       9:ri      10:ri    
 node1               8:n        9:n        2:3        3:p     
 node2               2:3        0:3        9:n        1:1     
 model                                                        
 res eff            10.0000k    1.4962k    1.0000k    2.0000x 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 m                   1.0000     1.0000     1.0000     1.0000  
 ac                 10.0000k    1.4962k    1.0000k    2.0000x 
 temp               25.0000    25.0000    25.0000    25.0000  
 l                   0.         0.         0.         0.      
 w                   0.         0.         0.         0.      
 cap                 0.         0.         0.         0.      
 noise            1.000e+00  1.000e+00  1.000e+00  1.000e+00  
  
  
                                                           
 element name       10:r      10:ro     11:ri      11:r    
 node1              10:1      10:6       4:p       11:1    
 node2              10:3       1:1       1:2       11:3    
 model                                                     
 res eff             1.0000   75.0000    2.0000x    1.0000 
 tc1                 0.        0.        0.         0.     
 tc2                 0.        0.        0.         0.     
 scale               1.0000    1.0000    1.0000     1.0000 
 m                   1.0000    1.0000    1.0000     1.0000 
 ac                  1.0000   75.0000    2.0000x    1.0000 
 temp               25.0000   25.0000   25.0000    25.0000 
 l                   0.        0.        0.         0.     
 w                   0.        0.        0.         0.     
 cap                 0.        0.        0.         0.     
 noise            1.000e+00 1.000e+00 1.000e+00  1.000e+00 
  
  
                                                           
 element name       11:ro     12:ri      12:r      12:ro   
 node1              11:6       0:0       12:1      12:6    
 node2               1:2       5:n       12:3       0:2    
 model                                                     
 res eff            75.0000    2.0000x    1.0000   75.0000 
 tc1                 0.        0.         0.        0.     
 tc2                 0.        0.         0.        0.     
 scale               1.0000    1.0000     1.0000    1.0000 
 m                   1.0000    1.0000     1.0000    1.0000 
 ac                 75.0000    2.0000x    1.0000   75.0000 
 temp               25.0000   25.0000    25.0000   25.0000 
 l                   0.        0.         0.        0.     
 w                   0.        0.         0.        0.     
 cap                 0.        0.         0.        0.     
 noise            1.000e+00 1.000e+00  1.000e+00 1.000e+00 
  
  
                                                            
 element name       13:ri      13:r      13:ro     14:ri    
 node1               6:p       13:1      13:6       7:p     
 node2               2:1       13:3       2:1       2:2     
 model                                                      
 res eff             2.0000x    1.0000   75.0000    2.0000x 
 tc1                 0.         0.        0.        0.      
 tc2                 0.         0.        0.        0.      
 scale               1.0000     1.0000    1.0000    1.0000  
 m                   1.0000     1.0000    1.0000    1.0000  
 ac                  2.0000x    1.0000   75.0000    2.0000x 
 temp               25.0000    25.0000   25.0000   25.0000  
 l                   0.         0.        0.        0.      
 w                   0.         0.        0.        0.      
 cap                 0.         0.        0.        0.      
 noise            1.000e+00  1.000e+00 1.000e+00 1.000e+00  
  
  
                                                           
 element name       14:r      14:ro     15:ri      15:r    
 node1              14:1      14:6       0:0       15:1    
 node2              14:3       2:2       8:n       15:3    
 model                                                     
 res eff             1.0000   75.0000    2.0000x    1.0000 
 tc1                 0.        0.        0.         0.     
 tc2                 0.        0.        0.         0.     
 scale               1.0000    1.0000    1.0000     1.0000 
 m                   1.0000    1.0000    1.0000     1.0000 
 ac                  1.0000   75.0000    2.0000x    1.0000 
 temp               25.0000   25.0000   25.0000    25.0000 
 l                   0.        0.        0.         0.     
 w                   0.        0.        0.         0.     
 cap                 0.        0.        0.         0.     
 noise            1.000e+00 1.000e+00 1.000e+00  1.000e+00 
  
  
                                                           
 element name       15:ro     16:ri      16:r      16:ro   
 node1              15:6       0:0       16:1      16:6    
 node2               2:3       9:n       16:3       0:3    
 model                                                     
 res eff            75.0000    2.0000x    1.0000   75.0000 
 tc1                 0.        0.         0.        0.     
 tc2                 0.        0.         0.        0.     
 scale               1.0000    1.0000     1.0000    1.0000 
 m                   1.0000    1.0000     1.0000    1.0000 
 ac                 75.0000    2.0000x    1.0000   75.0000 
 temp               25.0000   25.0000    25.0000   25.0000 
 l                   0.        0.         0.        0.     
 w                   0.        0.         0.        0.     
 cap                 0.        0.         0.        0.     
 noise            1.000e+00 1.000e+00  1.000e+00 1.000e+00 


 **** capacitors
  
  
                                                              
 element name        3:c1       3:c2       4:c1       4:c2    
 node1               0:1        3:1        4:1        4:p     
 node2               3:1        3:p        1:2        0:0     
 model                                                        
 cap eff             2.0000n    2.0000n  993.9491p  496.9746p 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 ic                  0.         0.         0.         0.      
 m                   1.0000     1.0000     1.0000     1.0000  
 w                   0.         0.         0.         0.      
 l                   0.         0.         0.         0.      
 temp               25.0000    25.0000    25.0000    25.0000  
  
  
                                                              
 element name        6:c1       6:c2       7:c1       7:c2    
 node1               6:1        6:p        0:2        7:1     
 node2               2:1        0:0        7:1        7:p     
 model                                                        
 cap eff            19.3338n    9.6669n    2.0000n    2.0000n 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 ic                  0.         0.         0.         0.      
 m                   1.0000     1.0000     1.0000     1.0000  
 w                   0.         0.         0.         0.      
 l                   0.         0.         0.         0.      
 temp               25.0000    25.0000    25.0000    25.0000  
  
  
                                                              
 element name       10:c       11:c       12:c       13:c     
 node1              10:3       11:3       12:3       13:3     
 node2               0:0        0:0        0:0        0:0     
 model                                                        
 cap eff            31.8300m   31.8300m   31.8300m   31.8300m 
 tc1                 0.         0.         0.         0.      
 tc2                 0.         0.         0.         0.      
 scale               1.0000     1.0000     1.0000     1.0000  
 ic                  0.         0.         0.         0.      
 m                   1.0000     1.0000     1.0000     1.0000  
 w                   0.         0.         0.         0.      
 l                   0.         0.         0.         0.      
 temp               25.0000    25.0000    25.0000    25.0000  
  
  
                                                   
 element name       14:c       15:c       16:c     
 node1              14:3       15:3       16:3     
 node2               0:0        0:0        0:0     
 model                                             
 cap eff            31.8300m   31.8300m   31.8300m 
 tc1                 0.         0.         0.      
 tc2                 0.         0.         0.      
 scale               1.0000     1.0000     1.0000  
 ic                  0.         0.         0.      
 m                   1.0000     1.0000     1.0000  
 w                   0.         0.         0.      
 l                   0.         0.         0.      
 temp               25.0000    25.0000    25.0000  


 **** voltage-controlled voltage sources
      name        +             -          dimension  function  scale
       10:ei             10:1               0:0              1      poly       1.    
       10:eo             10:6               0:0              1      poly       1.    
       11:ei             11:1               0:0              1      poly       1.    
       11:eo             11:6               0:0              1      poly       1.    
       12:ei             12:1               0:0              1      poly       1.    
       12:eo             12:6               0:0              1      poly       1.    
       13:ei             13:1               0:0              1      poly       1.    
       13:eo             13:6               0:0              1      poly       1.    
       14:ei             14:1               0:0              1      poly       1.    
       14:eo             14:6               0:0              1      poly       1.    
       15:ei             15:1               0:0              1      poly       1.    
       15:eo             15:6               0:0              1      poly       1.    
       16:ei             16:1               0:0              1      poly       1.    
       16:eo             16:6               0:0              1      poly       1.    


 **** independent sources

     name         node1        node2      dc volt    ac mag    ac phase    type
  vin  0                 1                    0.         1.0000     0.      dc   


 **** subcircuit calls
    name        subcircuit         external nodes


         0:xpe      preemp          0:1           0:2       
         0:xde      deemp           0:2           0:3       
         1:xhp      hp              0:1           1:1       
         1:xlp      lp              1:1           1:2       
         1:xg       gain            1:2           0:2       
         2:xlp      lp              0:2           2:1       
         2:xhp      hp              0:2           2:2       
         2:xsum     sum             2:1           2:2           2:3       
         2:xg       gain            2:3           0:3       
         3:x1       popamp          3:p           1:1           1:1       
         4:x1       popamp          4:p           1:2           1:2       
         5:x1       popamp          0:0           5:n           0:2       
         6:x1       popamp          6:p           2:1           2:1       
         7:x1       popamp          7:p           2:2           2:2       
         8:x1       popamp          0:0           8:n           2:3       
         9:x1       popamp          0:0           9:n           0:3       
  
      
 *****************************************************************
 ******  option summary
 ******
 runlvl  = 3         bypass  = 2         
  Opening plot unit= 79
 file=nrs.pa0

1****** HSPICE -- H-2013.03 32-BIT (Mar  7 2013) win32 ******                   
 ******  
 noise reduction system - main

  ******  operating point information tnom=  25.000 temp=  25.000 *****
 ***** operating point status is all       simulation time is     0.     
     node    =voltage       node    =voltage       node    =voltage

 + 0:1       =   0.       0:2       =   0.       0:3       =   0.     
 + 1:1       =   0.       1:2       =   0.       2:1       =   0.     
 + 2:2       =   0.       2:3       =   0.       3:1       =   0.     
 + 3:p       =   0.       4:1       =   0.       4:p       =   0.     
 + 5:n       =   0.       6:1       =   0.       6:p       =   0.     
 + 7:1       =   0.       7:p       =   0.       8:n       =   0.     
 + 9:n       =   0.      10:1       =   0.      10:3       =   0.     
 +10:6       =   0.      11:1       =   0.      11:3       =   0.     
 +11:6       =   0.      12:1       =   0.      12:3       =   0.     
 +12:6       =   0.      13:1       =   0.      13:3       =   0.     
 +13:6       =   0.      14:1       =   0.      14:3       =   0.     
 +14:6       =   0.      15:1       =   0.      15:3       =   0.     
 +15:6       =   0.      16:1       =   0.      16:3       =   0.     
 +16:6       =   0.     


 **** voltage sources

 subckt              
 element   0:vin     
  volts       0.     
  current     0.     
  power       0.     

     total voltage source power dissipation=    0.            watts



 **** resistors

 subckt    xpe.xhp     xpe.xhp     xpe.xlp     xpe.xlp     xpe.xg    
 element   3:r1        3:r2        4:r1        4:r2        5:rf      
  r value   106.1533k   212.3067k   120.0000k   120.0000k    28.1838k
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xpe.xg      xde.xlp     xde.xlp     xde.xhp     xde.xhp   
 element   5:ri        6:r1        6:r2        7:r1        7:r2      
  r value     1.0000k   120.0000k   120.0000k     5.4573k    10.9147k
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xde.xsum    xde.xsum    xde.xsum    xde.xg      xde.xg    
 element   8:r1        8:r2        8:rf        9:rf        9:ri      
  r value    10.0000k    10.0000k    10.0000k     1.4962k     1.0000k
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xpe.xhp.x1  xpe.xhp.x1  xpe.xhp.x1  xpe.xlp.x1  xpe.xlp.x1
 element  10:ri       10:r        10:ro       11:ri       11:r       
  r value     2.0000x     1.0000     75.0000      2.0000x     1.0000 
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xpe.xlp.x1  xpe.xg.x1   xpe.xg.x1   xpe.xg.x1   xde.xlp.x1
 element  11:ro       12:ri       12:r        12:ro       13:ri      
  r value    75.0000      2.0000x     1.0000     75.0000      2.0000x
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xde.xlp.x1  xde.xlp.x1  xde.xhp.x1  xde.xhp.x1  xde.xhp.x1
 element  13:r        13:ro       14:ri       14:r        14:ro      
  r value     1.0000     75.0000      2.0000x     1.0000     75.0000 
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xde.xsum.x  xde.xsum.x  xde.xsum.x  xde.xg.x1   xde.xg.x1 
 element  15:ri       15:r        15:ro       16:ri       16:r       
  r value     2.0000x     1.0000     75.0000      2.0000x     1.0000 
  v drop      0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     
  power       0.          0.          0.          0.          0.     

 subckt    xde.xg.x1 
 element  16:ro      
  r value    75.0000 
  v drop      0.     
  current     0.     
  power       0.     


 **** voltage-controlled voltage sources


 subckt      xpe.xhp.    xpe.xhp.    xpe.xlp.    xpe.xlp.    xpe.xg.x
 element  10:ei       10:eo       11:ei       11:eo       12:ei      
  volts       0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     



 subckt      xpe.xg.x    xde.xlp.    xde.xlp.    xde.xhp.    xde.xhp.
 element  12:eo       13:ei       13:eo       14:ei       14:eo      
  volts       0.          0.          0.          0.          0.     
  current     0.          0.          0.          0.          0.     



 subckt      xde.xsum    xde.xsum    xde.xg.x    xde.xg.x
 element  15:ei       15:eo       16:ei       16:eo      
  volts       0.          0.          0.          0.     
  current     0.          0.          0.          0.     



 ******  
 noise reduction system - main

  ******  ac analysis tnom=  25.000 temp=  25.000 *****
x

        freq    volt db    
                     3     
  100.00000     237.7513m  
  105.92537     677.6387m  
  112.20185       1.0615   
  118.85022       1.3921   
  125.89254       1.6732   
  133.35214       1.9093   
  141.25375       2.1053   
  149.62357       2.2660   
  158.48932       2.3960   
  167.88040       2.4995   
  177.82794       2.5803   
  188.36491       2.6414   
  199.52623       2.6853   
  211.34890       2.7137   
  223.87211       2.7281   
  237.13737       2.7289   
  251.18864       2.7164   
  266.07251       2.6901   
  281.83829       2.6489   
  298.53826       2.5914   
  316.22777       2.5156   
  334.96544       2.4188   
  354.81339       2.2983   
  375.83740       2.1510   
  398.10717       1.9737   
  421.69650       1.7637   
  446.68359       1.5189   
  473.15126       1.2381   
  501.18723     921.9947m  
  530.88444     572.9137m  
  562.34133     195.6548m  
  595.66214    -202.6166m  
  630.95734    -612.3749m  
  668.34392      -1.0220   
  707.94578      -1.4182   
  749.89421      -1.7869   
  794.32823      -2.1135   
  841.39514      -2.3844   
  891.25094      -2.5876   
  944.06088      -2.7138   
    1.00000k     -2.7568   
    1.05925k     -2.7147   
    1.12202k     -2.5895   
    1.18850k     -2.3874   
    1.25893k     -2.1176   
    1.33352k     -1.7922   
    1.41254k     -1.4251   
    1.49624k     -1.0305   
    1.58489k   -622.7324m  
    1.67880k   -215.1012m  
    1.77828k    180.8007m  
    1.88365k    555.4573m  
    1.99526k    901.7236m  
    2.11349k      1.2149   
    2.23872k      1.4925   
    2.37137k      1.7340   
    2.51189k      1.9406   
    2.66073k      2.1143   
    2.81838k      2.2579   
    2.98538k      2.3746   
    3.16228k      2.4673   
    3.34965k      2.5389   
    3.54813k      2.5918   
    3.75837k      2.6280   
    3.98107k      2.6488   
    4.21697k      2.6552   
    4.46684k      2.6475   
    4.73151k      2.6255   
    5.01187k      2.5884   
    5.30884k      2.5346   
    5.62341k      2.4621   
    5.95662k      2.3682   
    6.30957k      2.2495   
    6.68344k      2.1020   
    7.07946k      1.9210   
    7.49894k      1.7015   
    7.94328k      1.4383   
    8.41395k      1.1260   
    8.91251k    759.6846m  
    9.44061k    335.2583m  
   10.00000k   -150.4140m  
y
-----------------------------------------------

          ***** job concluded
1****** HSPICE -- H-2013.03 32-BIT (Mar  7 2013) win32 ******                   
 ******  
 noise reduction system - main

  ******  job statistics summary tnom=  25.000 temp=  25.000 *****

  ******  HSPICE Threads Information  ******

  Command Line Threads Count :     1
  Available CPU Count        :     8
  Actual Threads Count       :     1


  ******  Circuit Statistics  ******
  # nodes       =      41 # elements   =      66
  # resistors   =      36 # capacitors =      15 # inductors   =       0
  # mutual_inds =       0 # vccs       =       0 # vcvs        =      14
  # cccs        =       0 # ccvs       =       0 # volt_srcs   =       1
  # curr_srcs   =       0 # diodes     =       0 # bjts        =       0
  # jfets       =       0 # mosfets    =       0 # U elements  =       0
  # T elements  =       0 # W elements =       0 # B elements  =       0
  # S elements  =       0 # P elements =       0 # va device   =       0
  # vector_srcs =       0 # N elements =       0


  ******  Runtime Statistics (seconds)  ******

  analysis           time    # points   tot. iter  conv.iter
  op point           0.01           1           3
  ac analysis        0.00          81          81
  readin             0.01
  errchk             0.02
  setup              0.00
  output             0.00


           peak memory used          0.00 megabytes
           total cpu time            0.05 seconds
           total elapsed time        2.53 seconds
           job started at     17:39:43 12/02/2013
           job ended   at     17:39:46 12/02/2013


  lic: Release hspice token(s) 
 lic: total license checkout elapse time:        2.47(s)
```

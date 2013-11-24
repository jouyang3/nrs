@echo off

hspice nrs.cir > nrs.log
hspice TestPreemp.cir > TestPreemp.log
hspice TestDeemp.cir > TestDeemp.log
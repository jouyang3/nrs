@echo off

hspice driver.cir > driver.log
hspice TestPreemp.cir > TestPreemp.log
hspice TestDeemp.cir > TestDeemp.log
@echo off
hspice nrs.cir > nrs.log 2>nul
hspice TestPreemp.cir > TestPreemp.log 2>nul
hspice TestDeemp.cir > TestDeemp.log 2>nul
type preamble > README.md
echo. >> README.md
echo. >> README.md
echo ##Lastest Output >> README.md
echo ``` >> README.md
type nrs.log >> README.md
echo ``` >> README.md
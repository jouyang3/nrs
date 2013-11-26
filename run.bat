@echo off

hspice nrs.cir > nrs.log
hspice TestPreemp.cir > TestPreemp.log
hspice TestDeemp.cir > TestDeemp.log

type preamble > README.md
echo ‘’
echo ‘##Lastest Output’
echo ‘```’ >> README.md
type nrs.log >> README.md
echo ‘```’ >> README.md
#!/bin/bash
hspice nrs.cir > nrs.log
hspice TestPreemp.cir > TestPreemp.log
hspice TestDeemp.cir > TestDeemp.log

cat preamble > README.md
echo ‘’
echo ‘##Lastest Output’
echo ‘```’ >> README.md
cat nrs.log >> README.md
echo ‘```’ >> README.md

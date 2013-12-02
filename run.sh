#!/bin/bash
hspice nrs.cir > nrs.log 2>/dev/null
hspice TestPreemp.cir > TestPreemp.log 2>/dev/null
hspice TestDeemp.cir > TestDeemp.log 2>/dev/null

cat preamble > README.md
echo '' >> README.md
echo '##Lastest Output' >> README.md
echo '```' >> README.md
cat nrs.log >> README.md
echo '```' >> README.md

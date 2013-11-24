#!/bin/bash
hspice nrs.cir > nrs.log
hspice TestPreemp > TestPreemp.log
hspice TestDeemp > TestDeemp.log

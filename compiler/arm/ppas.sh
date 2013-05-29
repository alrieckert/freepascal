#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /home/anton/development/fpc/compiler/arm/pp.exe
OFS=$IFS
IFS="
"
i386-win32-ld -b pei-i386 -m i386pe  --gc-sections    --entry=_mainCRTStartup    -o /home/anton/development/fpc/compiler/arm/pp.exe /home/anton/development/fpc/compiler/arm/link.res
if [ $? != 0 ]; then DoExitLink /home/anton/development/fpc/compiler/arm/pp.exe; fi
IFS=$OFS
OFS=$IFS
IFS="
"
i386-win32-postw32 --subsystem console --input /home/anton/development/fpc/compiler/arm/pp.exe --stack 16777216
if [ $? != 0 ]; then DoExitLink ; fi
IFS=$OFS

#!/bin/bash

#ls -la /
#mkdir test
#abc=$(pwd)
#cd test
#echo 'HELLOWORLD' > test.txt
#cat test.txt
#cd $abc

HELLOWORLD= 'echo  "HELLOWORLD" > test.txt'
if [ $HELLOWORLD -eq 0 ]; then
	lava-test-case helloworld --result pass

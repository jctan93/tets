#!/bin/bash

#ls -la /
#mkdir test
#abc=$(pwd)
#cd test
#echo 'HELLOWORLD' > test.txt
#cat test.txt
#cd $abc

echo  "HELLOWORLD" > test.txt
HELLOWORLD='echo $?'
if [ $HELLOWORLD -eq 0 ]; then
	lava-test-case helloworld-create --result pass
fi
HELLOWORLDCAT='echo test.txt'
if [ $HELLOWORLDCAT == 'HELLOWORLD' ]; then
	lava-test-case helloworld-cat --result pass
fi

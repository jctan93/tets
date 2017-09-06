#!/bin/bash

#ls -la /
#mkdir test
#abc=$(pwd)
#cd test
#echo 'HELLOWORLD' > test.txt
#cat test.txt
#cd $abc

echo "HELLOWORLD" > test.txt
if [ $? -eq 0 ]; then
	lava-test-case helloworld-create --result pass
fi
helloworldcat=$(cat test.txt)
if [ "$helloworldcat" == 'HELLOWORLD' ]; then
	lava-test-case helloworld-cat --result pass
fi

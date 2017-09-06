#!/bin/bash

echo "HELLOWORLD" > test.txt
if [ $? -eq 0 ]; then
	#lava-test-case helloworld-create --result pass
#else
	#lava-test-case helloworld-create --result fail
	#echo "JELLO"
	echo "test1:" "pass"	
fi

#helloworldcat=$(cat test.txt)
#if [ "$helloworldcat" == 'HELLOWORLD' ]; then
#	lava-test-case helloworld-cat --result pass
#else
#	lava-test-case helloworld-cat --result fail
#fi

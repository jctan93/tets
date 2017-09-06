#!/bin/bash

#ls -la /
#mkdir test
#abc=$(pwd)
#cd test
#echo 'HELLOWORLD' > test.txt
#cat test.txt
#cd $abc

echo  "HELLOWORLD" > test.txt
if [ $? -eq 0 ]; then
	echo "WORKS!"
fi
helloworldcat=$(cat test.txt)
if [ "$helloworldcat" == "HELLOWORLD" ]; then
	echo "TWO WORKS"
else
	echo "TWO DOESN'T WORK"
	echo "$helloworldcat"
fi


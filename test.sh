#!/bin/bash

echo "HELLOWORLD" > test.txt
if [ $? -eq 0 ]; then
	lava-test-case helloworld-create --result pass
else
	lava-test-case helloworld-create --result fail
fi

#lava-test-case random-test --result pass

helloworldcat=$(cat test.txt)
if [ "$helloworldcat" == 'HELLOWORLD' ]; then
	lava-test-case helloworld-cat --result pass
else
	lava-test-case helloworld-cat --result fail
fi

ls -la /bin
if [ $? -eq 0 ]; then
	lava-test-case ls-la --result pass
else
	lava-test-case ls-la --result fail
fi

ls -la /usr/bin
if [ $? -eq 0 ]; then
	lava-test-case ls-la-usr-bin --result pass
else
	lava-test-case ls-la-usr-bin --result fail
fi

mkdir createfolder
if [ $? -eq 0 ]; then
	lava-test-case mkdir-test --result pass
else
	lava-test-case mkdir-test --result fail
fi

mv test.txt createfolder
if [ $? -eq 0 ]; then
	lava-test-case movefile-test --result pass
else
	lava-test-case movefile-test --result fail
fi

echo 'Acquire::http::Proxy "http://proxy-png.intel.com:911";' > /etc/apt/apt.conf
if [ $? -eq 0 ]; then
	lava-test-case acquire-proxy --result pass
else
	lava-test-case acquire-proxy --result fail
fi


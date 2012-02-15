#! /bin/bash

if [ -a class.o ]
	then echo "class.o is already built."
else
	echo "Building class.o"
	g++ -c class.cpp 
	if [ $? -eq 0 ]
		then echo "Success!"
	fi
fi

if [ $? -eq 0 ]
	then
		echo "Building main"
		g++ class.o main.cpp -o main
		if [ $? -eq 0 ]
			then echo "Success!"
		fi
else
	echo "Fix previous errors and re-run the file $0"
fi


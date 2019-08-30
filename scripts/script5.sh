# Using if ... elif ... else .. fi
if [ -d $1 ]; then
	echo "You have passed a directory"
elif [ -f $1 ]; then
	echo "You have passed a file"
else
	echo "What have you passed as an argument? does that even exists?"
fi

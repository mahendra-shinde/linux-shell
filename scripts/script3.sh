# List all files (one per line) and then count lines and print the result.
# Using Argument $1 which refers to Command line argument passed to this script
# Verify if atleast ONE argument is supplied to script
# -eq For equality
# -ge For Greater than or Equal
# -le For Lesser or Equal
# -ne For Not equal

if [ "$#" -ge 1 ]; then
	echo "Counting the files from directory $1"
else
	echo "You did not provide any directory, so geting files from current directory instead"
fi

ls $1 -l | wc -l


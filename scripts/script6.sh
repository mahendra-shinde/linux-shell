## Example of SWITCH statement
if [ "$#" -lt 3 ]; then
	echo "Please provide THREE arguments"
	return;
fi
n1=$1
n2=$3
opr=$2
case $opr in
	"+")
		sum=$(( n1+n2 ))
		echo "Sum is $sum"
		;;
	"-")
		sub=$(( n1-n2 ))
		echo "Sub is $sub"
		;;
	"x")	
		mul=$(( n1*n2 ))
		echo "Multiplication is $mul"
		;;
	*)
		echo "Sorry, I was not taught this operation in maths class"
		;;
esac


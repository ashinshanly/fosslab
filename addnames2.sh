a=$1
b=$2
if [ "$#" -ne 2 ]
	then
	echo "incorrect"
else
	if [ -f "$a" ]
		then
		if grep -Fxq $b $a
		then
			echo "Already exists"
		else
			echo $b >> $a
			cat $a
		fi
	else
		echo "File not exist"
	fi
fi

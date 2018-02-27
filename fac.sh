result=1
for i in 'seq $1'
do
	let "result*=$i"
done
echo "The Factorial of $1 equals $result"

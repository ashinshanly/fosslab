echo "N:"
read n
i=1
sum=0
while [ $i -le $n ]
do
	sum=$((sum + i*2))
	i=$((i+1))
done
echo "SUM: $sum"

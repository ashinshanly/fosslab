echo "LIMIT: "
read n
i=0
#for i in `seq 1 $n`
while [ $i -le $n ] 
do
	if [ $((i % 2)) = 0 ]
    then
    	e=$((e+i))
    
    else
    	o=$((o+i))
	fi
    #s=$((s+i))
    i=$((i + 1))
done

echo "EVEN: $e "
echo "ODD: $o"

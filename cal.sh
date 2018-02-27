while :
do

echo "Choose an operation"
echo "1. Add"
echo "2. Subtract"
echo "3. Divide"
echo "4. Multiply"
read opr
echo "Enter 1st number"
read n1
echo "Enter 2nd number again"
read n2

if [ $opr = "1" ]
   then
      echo "SUM = $((n1+n2))"
elif [ $opr = "2" ]
   then  
      echo "DIFFERENCE = $((n1-n2))"
elif [ $opr = "3" ]
   then
      echo "QUOTIENT = $((n1/n2))"
elif [ $opr = "4" ]
   then
       echo "PRODUCT = $((n1*n2))"

fi
done

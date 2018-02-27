echo ""
echo "Enter first number"
read num1
echo "Enter second number"
read num2
while :
do

echo ""
echo "*********MENU*********"
echo "1 Addition"
echo "2 Subtraction"
echo "3 Multiplicatin"
echo "4 Divition"

echo ""
echo "Select operation"
read op



if [ $op = "1" ]
then
 echo "SUM = $((num1+num2))"
elif [ $op = "2" ]
then
 echo "DIFFERENCE = $((num1-num2))"
elif [ $op = "3" ]
then
 echo "PRODUCT = $((num1*num2))"
elif [ $op = "4" ]
then
 echo "QUOTIENT = $((num1/num2))"
fi
done

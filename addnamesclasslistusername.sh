if [ "$#" = 2 ]
then 
  echo "arguments ok"
  else
  echo "arguments fail"
fi
if [ ! -f $1 ]
then
    echo "$1 file not found."
   	else
 	echo "file found"
 
fi
if grep -Fxq "$2" "$1"
#result = $((grep -w "$1""$2"))
#if [ -n "$result" ]
then
	echo "USERNAME already exists!"
else
	echo $2>>$1
fi

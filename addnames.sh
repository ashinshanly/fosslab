if [ "$#" -eq 2 ]
then 
  echo "ok"
  else
  echo "fail"
  fi
file=$1
if [ ! -f "$file" ]
then
    echo "$0: File '${file}' not found."
   else
 echo "found"
 fi
 
 

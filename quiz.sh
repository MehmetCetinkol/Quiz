#!/bin/bash
 
echo "enter value of  n "
read num
if [ $((num%2)) -eq 0 ]
then

   for((i=num; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done
 
else
for (( i=1;i<=$num ;i++))
do
   for (( j=$num;j>=i;j-- ))
   do
   echo -n " "
   done
   for (( c=1;c<=i;c++ ))
   do
   echo -n " *"
   sum=`expr $sum + 1`
   done
echo ""
done
d_max=`expr $num - 1`
for (( i=$d_max;i>=1;i--))
do
   for (( j=i;j<=$d_max;j++ ))
   do
   if [ $j -eq $d_max ]
   then
   echo -n " "
   fi
   echo -n " "
   done
   for (( c=1;c<=i;c++ ))
   do
   echo -n " *"
   sum=`expr $sum + 1`
   done
echo ""
done
fi

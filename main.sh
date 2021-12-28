#!/bin/bash

echo "Enter the number:  "
read n
rm=$(( $n % 2 ))
 
if [ $rm -eq 0 ]
then
  echo "Value not perfect. $n is even number"
else
for (( i=1;i<=$n ;i++))
do
   for (( j=$n;j>=i;j-- ))
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
d_max=`expr $n - 1`
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
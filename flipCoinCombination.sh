#! /bin/bash
declare -A result_count
result_count=( [0]=0 [1]=0 )
for (( i=0;i<5;i++ ))
do
	result=$(( RANDOM%2 ))
	myresult=${result_count[$result]}
	myresult=$(( myresult+1 ))
	result_count[$result]=$myresult
done
a=${result_count[0]}
b=5
c=`echo $a $b | awk '{ print $1/$2 }'`
d=100
e=`echo $c $d | awk '{ print $1*$2 }'`
echo "Head win percentage:"$e"%"
f=${result_count[0]}
g=5
h=`echo $f $g | awk '{ print $1/$2 }'`
i=`echo $h $d | awk '{ print $1*$2 }'`
echo "Tail win percentage:"$i"%"


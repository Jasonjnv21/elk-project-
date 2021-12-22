#!/bin/bash

states=( 'hawaii' 'california' 'texas' 'florida' 'idaho' ) 
for state in ${states[@]} 
do 
if [ $state == 'california' ] || [ $state == 'texas' ] || [ $state == 'florida' ] || [ $state == 'idaho' ] 
then 
	echo 'im not fond of hawaii'
else
	echo "hawaii is the best"
fi

done

num=( 0..9 ) 
for n in ${num[@]};
do
	if [ $n == 3 ] || [ $n == 5 ] || [ $n == 7 ] 
	then 
		echo '3' '5' '7'
	fi
done


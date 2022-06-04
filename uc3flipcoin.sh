#!/bin/bash
Head=0
tail=1
h=0
t=0
c=1
while [ $c -eq 1 ]
do	flip=$(( RANDOM % 2))
	bet=$(( RANDOM % 2))
	if [ $flip == $bet ]
	then
		if [ $flip -eq $Head ]
		then
			((h++))
		else
			((t++))
	fi	fi
	if [ $t -eq 21 ]
	then
		echo "Tail won by $(( $t - $h))"
		c=0
	elif [ $h -eq 21 ]
	then
		echo "Head won by $(( $h - $t))"
		c=0
	elif [[ $t -eq 21 && $h -eq 21 ]]
	then
		echo "Tie"
		c=0
	fi
done

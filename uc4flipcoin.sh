#!/bin/bash
Head=0
tai=1
h=0
t=0
c=0
while [ $c -eq 0 ]
do	flip=$(( RANDOM % 2 ))
	bet=$(( RANDOM % 2 ))
	if [ $flip -eq $bet ]
	then
		if [ $flip -eq $Head ]
		then
			((h++))
		else
			((t++))
		fi
	fi
	if [ $t -eq 21 ]						#to check if either has reached 21
	then
		echo "Tail won by $(( $t - $h))"
		c=1

	elif [ $h -eq 21 ]
	then
		echo "Head won by $(( $h - $t))"
		c=1

	elif [[ $t -eq $h ]]						#tie
	then
		echo "Tie"
		token=0

		while [ $token -eq 0 ]
		do
			flip=$(( RANDOM % 2 ))
			bet=$(( RANDOM % 2 ))

			if [ $flip == $bet ]				#bet goeson till difference of two achieved in case of tie
			then
				if [ $flip -eq $Head ]
				then
					((h++))
				else
					((t++))
				fi
			fi

			if [[ $(( $h - $t )) -eq 2 ]]
			then 
				token=1
				c=1
				echo "head won"
			elif [  $(( $t - $h )) -eq 2 ]
			then	token=1
				c=1
				echo "head won"
			fi
		done
	fi
done

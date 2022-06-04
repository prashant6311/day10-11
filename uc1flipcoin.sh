#!/bin/bash
Head=0
tail=1
ran=$(( RANDOM % 2))
case $ran in
	$Head)
	echo "Head"
	;;
	*)
	echo "Tail"
	;;
esac


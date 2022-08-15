#!/bin/bash/ -x
#! /bin/bash -x

echo "Welcome to flip coin combination"

IS_HEAD=1

flipCoinResult=$((RANDOM%2))
echo $flipCoinResult

if [ $flipCoinResult -eq $IS_HEAD ]
then
	echo "Head"
else
	echo "Tail"
fi

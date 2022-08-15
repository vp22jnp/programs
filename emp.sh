#!/bin/bash -x
parttime=1;
fulltime=2;
emprateperhour=20;
noworkdays=20;
for (( day=1; day<=noworkdays; day++ ))
do 
empcheck=$((random%3));
case $empcheck in 
$fulltime)
emphours=8;;
$parttime)
emphours=4;;
*)
emphours=0;;
esac
salary=$(($emphours*$emprateperhour));
totalsalary=$(($totalsalary+$salary));
done



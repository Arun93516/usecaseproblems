#!/bin/bash -x


isparttime=2
isfulltime=1
emprateperhour=20
randomcheck=$((RANDOM%3))

if [ $isfulltime == $randomcheck ]
then
     emphours=8
elif [ $isparttime == $randomcheck ]
then
      emphours=4
else
      emphours=0
fi
salary=$(( $emphours * $emprateperhour ))
echo $salary

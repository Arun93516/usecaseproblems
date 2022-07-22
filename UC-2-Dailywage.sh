#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))
if (( $ispresent == $randomcheck ))
then
      emphour=8     #total working in hours
      emprateperhour=20  #capacity o earning in  hour
      salary=$(($emphour*$emprateperhour))
      echo $salary
else
      salary=0
      echo $salary
fi 

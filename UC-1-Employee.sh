#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))

#if [$ispresent -eq $randomcheck ]
if (( $ispresent == $randomcheck ))
then
     echo "Employee is Present"
else
     echo "Employee is absent"
fi

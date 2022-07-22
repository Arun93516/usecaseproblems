#!/bin/bash -x

isParttime=1
isFulltime=2
emprateperhours=20
randomcheck=$((RANDOM%3))

case $randomcheck in
                     $ispresent )
                              emphours=4
                     ;;
                     $isFulltime )
                              emphours=8
                     ;;
                     *)
                        emphours=0
                      ;;
esac

salary=$(($emphours*$emprateperhours))


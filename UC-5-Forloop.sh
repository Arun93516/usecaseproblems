#!/bin/bash -x


isparttime=1
isabsent=3
isfulltime=2
emprateperhour=20
numofworkingdays=20

totalsalary=0

for(( day=1; day<=$numofworkingdays; day++ ))
do
      randomcheck=$((RANDOM%4))
            case $randomcheck in
                            $isfulltime )
                                    emphour=8
                             ;;
                            $isparttime )
                                     emphour=4
                             ;;
                            $absent )
                                     emphour=1
                             ;;
                              *)

                                    emphour=0
                             ;;
esac

     salary=$(($emphour*$emprateperhour))
     totalsalary=$(($totalsalary+$salary))

done

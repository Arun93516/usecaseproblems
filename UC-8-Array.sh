#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorkingHr()
{
            case $randomcheck in
                         $isFullTime)
                               empHrs=8
                     ;;
                          $isPartTime)
                             empHrs=4
                     ;;

                     *)
                              empHrs=0
                     ;;

            esac
}

function  getEmpwage()
{
     echo $(( $totalEmpHr*$empRatePerHr ))
}


 while [[ $totalEmpHr -lt $maxRateInMonth &&
              $totalWorkingDays -lt $numOfWorkingDays ]]
        do
          ((totalWorkingDays++))
           randomcheck=$((RANDOM%3))
           getWorkingHr $randomcheck
           totalEmpHr=$(($totalEmpHr+$empHrs))
           dailywages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
   done


totalSalary="$( getEmpwage $totalEmpHr )"
echo ${dailywages[@]}




totalEmpHours=0;
totalWorkingDays=0;

while [[ $totalEmpHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numberWorkingDays ]]
do
        ((totalWorkingDays++))

        empCheck=$((RANDOM%3));

                case $empCheck in
                $fullTime)
                        empHours=8;;
                $partTime)
                        empHours=4;;
                *)
                        empHours=0;;
esac

        totalEmpHours=$(($totalEmpHours+$empHours));
done

totalSalary=$(($totalEmpHours+$empRatePerHour));

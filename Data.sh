#!/bin/bash 
data=$(date)
#echo "$data"
for values in $data
do
    echo "$values"
done
echo "Finished the for"
sleep 1
if [[ "$data" =~ "Tue" ]];
then
    echo "Today is tuesday"
fi

#other metod

#!/bin/bash 
data=$(date)
#echo "$data"
for values in $data
do
    echo "$values"
done
echo "Finished the for"
sleep 1

finder=$(grep Tue & )
if [[ "$data" =~ "$finder" ]];
then
    echo "Today is tuesday"
fi

#

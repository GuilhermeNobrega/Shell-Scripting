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

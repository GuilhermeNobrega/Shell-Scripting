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

#Other method

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

# Other method

#!/bin/bash 
data=$(date)
values=()
#echo "${arry[*]}"
for results in $data
do  
    values+=("$results")
done
echo "${values[*]}"
echo "Finished loop for..."
sleep 1
if [[ "${values[*]}" =~ "Tue" ]];
then
    echo "Today is tuesday"
fi

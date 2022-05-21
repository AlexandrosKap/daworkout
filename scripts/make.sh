#!/bin/env sh

# "Compile" script

output='./workout.csv'
months='./workout/months'
days="./scripts/days.sh"
readme='./README.md'
program='./PROGRAM.md'

# Create the csv file
temp='./temp.dhall'
echo 'let Workout = ./workout/Workout.dhall' > $temp
echo "in " >> $temp
for month in $months/*; do
    echo "($month)#" >> $temp
done
echo "([] : List Workout)" >> $temp
dhall-to-csv --file $temp --output $output
echo "Created: $output"
rm $temp

# Update the readme
printf '# Daworkout\n\n' > $readme
printf 'My workout files. Yeah.\n\n' >> $readme
sh $days >> $readme
echo '' >> $readme
cat $program >> $readme

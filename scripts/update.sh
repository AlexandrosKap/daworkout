#!/bin/env sh

# "Compile" script.

script_dir="${0%/*}"
project_dir="$script_dir/.."
workout_dir="$project_dir/workout"
months_dir="$workout_dir/months"

days_script="$script_dir/days.sh"

readme="$project_dir/README.md"
program="$project_dir/PROGRAM.md"
output="$project_dir/workout.csv"

# Create temp file.
temp="$project_dir/temp.dhall"
echo "let Workout = $workout_dir/Packages/Workout/Workout.dhall" > $temp
echo 'in ' >> $temp
for month in $months_dir/*; do
    echo "($month)#" >> $temp
done
echo '([] : List Workout)' >> $temp

# Create csv file and remove temp file.
dhall-to-csv --file $temp --output $output
echo "Created: $output"
#rm $temp

# Update the readme.
printf '# Daworkout\n\n' > $readme
printf 'My workout files. Yeah.\n\n' >> $readme
sh $days_script >> $readme
echo  >> $readme
cat $program >> $readme
echo ---
cat $readme

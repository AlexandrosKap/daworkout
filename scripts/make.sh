#!/bin/env sh

readme='./README.md'
file='./workout.dhall'
days="./scripts/days.sh"

# Create the csv file.
dhall-to-csv \
    --file $file \
    --output workout.csv
echo "Transpiled: $file"

# Update the readme.
printf '# Daworkout\n\n' > $readme
printf 'My workout files. Yeah.\n\n' >> $readme
sh $days >> $readme

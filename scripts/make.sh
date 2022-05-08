#!/bin/env sh

file='./workout.dhall'

dhall-to-csv \
    --file $file \
    --output workout.csv
echo "Transpiled: $file"

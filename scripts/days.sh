#!/bin/env sh

# Find how many days I'm working out
file='./workout.csv'
n="$(cat $file | wc -l)"
echo "Working out for $(expr $n - 1) days."

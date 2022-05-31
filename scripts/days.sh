#!/bin/env sh

# Find how many days I'm working out.

script_dir="${0%/*}"
project_dir="$script_dir/.."
workout="$project_dir/workout.csv"
n="$(cat $workout | wc -l)"
echo "Working out for $(expr $n - 1) days."

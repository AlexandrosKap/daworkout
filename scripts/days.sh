#!/bin/env sh

file='./workout.csv'

# Find how many days I'm working out.
sum='0'
for line in $(cat $file); do
    days=${line%,*,*}
    [ $days != 'days' ] && sum=$(expr $sum + $days)
done
echo "Working out for $sum days."

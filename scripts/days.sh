#!/bin/env sh

file='./workout.csv'

sum='0'
for line in $(cat $file); do
    days=${line%,*,*}
    [ $days != 'days' ] && sum=$(expr $sum + $days)
done
echo "Working out for $sum days."

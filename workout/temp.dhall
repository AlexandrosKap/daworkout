let Workout = ./Packages/Workout/Workout.dhall
in 
(./scripts/../workout/months/1.dhall)#
(./scripts/../workout/months/2.dhall)#
([] : List Workout)

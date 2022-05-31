let newWorkout = ./Packages/Workout/newWorkout.dhall

let none = newWorkout "Nothing" 0
let walk = newWorkout "Walk" 1
let body = newWorkout "Bodyweight"
let bod1 = body 1
let bod2 = body 2
let bod3 = body 3

in  { none
    , walk
    , bod1
    , bod2
    , bod3
    }

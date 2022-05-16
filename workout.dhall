let Workout =
    { comment : Text
    , name : Text
    , sets : Natural
    }

let newWorkout : Text -> Natural -> Text -> Workout =
    \(name : Text) ->
    \(sets : Natural) ->
    \(comment : Text) ->
        { comment, name, sets }

let none = newWorkout "Nothing" 0
let walk = newWorkout "Walk" 1
let body = newWorkout "Bodyweight"
let bod1 = body 1
let bod2 = body 2
let bod3 = body 3

let m1 =
    [ bod1 ""
    , bod1 ""
    , bod1 ""
    , none ""
    , none ""
    , bod2 ""
    , bod2 ""
    , walk ""
    , bod1 ""
    , walk ""
    , bod2 ""
    , none ""
    , bod2 ""
    , bod2 ""
    , none ""
    , bod2 ""
    , bod2 ""
    , none ""
    , bod3 ""
    , walk ""
    , walk ""
    , bod3 ""
    , bod3 ""
    , none ""
    , bod3 ""
    , walk ""
    , bod3 ""
    , bod1 ""
    , bod3 "Nice"
    , bod1 "Eehh"
    ]

let m2 = [] : List Workout

in  m1
    # m2

let workout =
    \(name : Text) ->
        \(sets : Natural) ->
            \(days : Natural) ->
                { name = name, sets = sets, days = days }

let none = workout "Nothing" 0
let walk = workout "Walk"
let body = workout "Bodyweight"

in  [ body 1 3
    , none 2
    , body 2 2
    , walk 1 3
    , body 1 1
    , walk 1 2
    , body 2 1
    , none 1
    , body 2 2
    , none 1
    , body 2 1
    ]

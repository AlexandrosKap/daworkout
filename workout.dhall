let workout =
    \(name : Text) ->
        \(sets : Natural) ->
            { name = name, sets = sets }

let none = workout "Nothing" 0
let walk = workout "Walk"
let body = workout "Bodyweight"

in  [ body 1
    , body 1
    , body 1
    , none
    , none
    , body 2
    , body 2
    , walk 1
    , walk 1
    , walk 1
    , body 1
    , walk 1
    , walk 1
    , body 2
    , body 2
    ]

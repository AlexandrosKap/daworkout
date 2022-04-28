let workout =
    { name : Text, sets : Natural}

let none =
    { name = "Nothing", sets = 0 } : workout

let walk =
    \(sets : Natural) ->
        { name = "Walking", sets = sets } : workout

let body =
    \(sets : Natural) ->
        { name = "Bodyweight", sets = sets } : workout

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

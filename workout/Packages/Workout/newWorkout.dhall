let Workout = ./Workout.dhall

let newWorkout : Text -> Natural -> Text -> Workout =
    \(name : Text) ->
    \(sets : Natural) ->
    \(comment : Text) ->
        { comment, name, sets }

in  newWorkout

//retrieve recorded inputs
if(!is_undefined(ds_map_find_value(replayMoves,
    string(reStep) + "keyboardCheckLeft")))
{
    keyboardCheckLeft = true;
} else
{
    keyboardCheckLeft = false;
}

if(!is_undefined(ds_map_find_value(replayMoves,
    string(reStep) + "keyboardCheckRight")))
{
    keyboardCheckRight = true;
} else
{
    keyboardCheckRight = false;
}

if(!is_undefined(ds_map_find_value(replayMoves,
    string(reStep) + "keyboardCheckUp")))
{
    keyboardCheckUp = true;
} else
{
    keyboardCheckUp = false;
}

if(!is_undefined(ds_map_find_value(replayMoves,
    string(reStep) + "keyboardCheckDown")))
{
    keyboardCheckDown = true;
} else
{
    keyboardCheckDown = false;
}

//update step
reStep ++;

if(keyboardCheckLeft) 
{
    var move = string(reStep) + "keyboardCheckLeft";
    ds_list_add(recordedMoves, move);
}

if(keyboardCheckRight) 
{
    var move = string(reStep) + "keyboardCheckRight";
    ds_list_add(recordedMoves, move);
}

if(keyboardCheckUp) 
{
    var move = string(reStep) + "keyboardCheckUp";
    ds_list_add(recordedMoves, move);
}

if(keyboardCheckDown) 
{
    var move = string(reStep) + "keyboardCheckDown";
    ds_list_add(recordedMoves, move);
}


reStep++;

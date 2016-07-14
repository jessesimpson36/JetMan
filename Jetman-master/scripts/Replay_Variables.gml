//Input Variables
keyboardCheckLeft = false;
keyboardCheckRight = false;
keyboardCheckUp = false;
keyboardCheckDown = false;

//Record/Replay
reStep = 0;
switch(argument0)
{
    case "record":
    recording = true;
    replaying = false;
    break;
    case "replay":
    recording = false;
    replaying = true;
    break;
}


//Recording
if(recording)
    recordedMoves = ds_list_create();
    
//Replaying
if(replaying)
    readReplayFromFile();

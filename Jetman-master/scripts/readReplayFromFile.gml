//create structure
replayMoves = ds_map_create();

//open file
var file = file_text_open_read("replay.txt");

//loop through data
while(!file_text_eof(file))
{
    var num = file_text_read_real(file);
    var str = file_text_read_string(file);
    file_text_readln(file);
    var line = string(num) + str;
    ds_map_add(replayMoves, line, 1);
}

//close file
file_text_close(file);

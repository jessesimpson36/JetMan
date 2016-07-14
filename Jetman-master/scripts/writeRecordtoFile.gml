//while not recording
if(!recording)
    exit;

//open file
var file = file_text_open_write("replay.txt");

//loop through structure
for(var i = 0; i < ds_list_size(recordedMoves); i++)
{
    file_text_write_string(file, ds_list_find_value(recordedMoves, i));
    file_text_writeln(file);
}

//close file
file_text_close(file);

//delete file
ds_list_destroy(recordedMoves);

if(replaying)
{
    replayStep();
} else
{
    keyboardCheckLeft = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(ord("A")),0);
    keyboardCheckUp = max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),0);
    keyboardCheckRight = max(keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("D")),0);
    keyboardCheckDown = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),0);

    if(recording)
        recordStep();
}

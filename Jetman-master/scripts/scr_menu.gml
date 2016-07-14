switch (mpos)
{
    case 0:
    {
        room_goto(room4);
        break;
    }
    case 1:
    {
        room_goto(room1);
        break;
    }
    case 2:
    {
        room_goto(room3);
        break;
    }
    case 3:
    {
        game_end();
        break;
    }
    default: break;
}

//Limit the object's speed
if (hspeed > 9) hspeed = 9;
if (hspeed < -9) hspeed = -9;
if (vspeed < -15) vspeed = -15;

//Retrieve the player's input
key_left = -keyboardCheckLeft;
key_right = keyboardCheckRight;
key_up = -keyboardCheckUp;
key_down = keyboardCheckDownw;

//set up movement
hmove = key_left + key_right;
vumove = key_up;
vdmove = key_down;

hsp = hmove * hlaunchspeed;
vusp = vumove * vlaunchspeed;
vdsp = vdmove;

if (vspeed < 9) vspeed += grav;

//Horizontal Collisions
if (place_meeting(x+hspeed,y,obj_block))
{
    while(!place_meeting(x+sign(hspeed),y,obj_block))
    {
        x += sign(hspeed);
    }
    if(place_meeting(x+sign(hsp),y,obj_block))
    {
        hsp = 0;
    }
    hspeed = 0;
}
//Vertical Collisions
if (place_meeting(x,y+vspeed,obj_block))
{
    while(!place_meeting(x,y+sign(vspeed),obj_block))
    {
        y += sign(vspeed);
    }
    if(place_meeting(x,y+sign(vusp),obj_block))
    {
        vusp = 0;
    }
    vspeed = 0;
}
//Hazard Collisions
if (place_meeting(x, y, obj_spike))
{
    room_restart();
}

//Dump hspeed
if(place_meeting(x, y+vdsp, obj_block))
{
    hspeed = 0;
}

//Friction
if(place_meeting(x, y+1, obj_block))
{
    if(hspeed != 0)
    {
    hspeed -= fric*sign(hspeed);
    }
}
if(place_meeting(x-1, y, obj_block) || place_meeting(x+1, y, obj_block))
{
    if(vspeed != 0)
    {
    vspeed -= fric*sign(vspeed);
    }
}

//Prevent the object from leaving the room
x = min (x, room_width-32);
x = max (x, 32);
y = min(y, room_height-32);
y = max(y, 32);

//Movement
if(!place_meeting(x+hsp,y,obj_block))
{
    hspeed += hsp;
}
if(!place_meeting(x,y+vusp,obj_block))
{
    vspeed += vusp;
}

//Animate
if(hmove != 0) image_xscale = sign(hmove);

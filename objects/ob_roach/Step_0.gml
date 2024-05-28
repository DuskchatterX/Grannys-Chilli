vsp = vsp + grv;

//Roach's horizontal collision with walls (Holt)
if (place_meeting(x+hsp, y, ob_wall))
{
	while (!place_meeting(x+sign(hsp),y,ob_wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Roach's vertical collision with walls (Holt)
if (place_meeting(x, y+vsp, ob_wall))
{
	while (!place_meeting(x,y+sign(vsp),ob_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Roach's animation change for jump (Holt)
if (!place_meeting(x,y+1,ob_wall))
{
	sprite_index = sp_roach_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sp_roach;
	}
	else
	{
		sprite_index = sp_roach_running;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
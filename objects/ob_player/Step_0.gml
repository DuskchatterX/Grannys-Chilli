#region //Player's movement and input (Rika)

if (hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	//Controller (Holt)
	if (key_left) || (key_right) || (key_jump)
	{
		controller = 0;
	}

	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0,gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

#endregion

//Player's movement calculated
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1, ob_wall)) && (key_jump) 
{
	vsp = -7;
}

//Player's horizontal collision with walls
if (place_meeting(x+hsp, y, ob_wall))
{
	while (!place_meeting(x+sign(hsp),y,ob_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Player's vertical collision with walls
if (place_meeting(x, y+vsp, ob_wall))
{
	while (!place_meeting(x,y+sign(vsp),ob_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Player's animation change for jump (Holt)
if (!place_meeting(x,y+1,ob_wall))
{
	sprite_index = sp_Player_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sp_Player;
	}
	else
	{
		sprite_index = sp_Player_running;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
//Slipper origin point and direction hover with mouse (Holt)
x = ob_player.x;
y = ob_player.y+4;



//Controller (Holt)
if (ob_player.controller == 0)
{
	image_angle = point_direction (x,y,mouse_x,mouse_y);
}
else
{
	var controllerh = gamepad_axis_value(0,gp_axisrh);
	var controllerv = gamepad_axis_value(0,gp_axisrv);
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
	{
		controllerangle = point_direction (0,0,controllerh,controllerv)
	}
	image_angle = controllerangle;
}

//firing delay for projectile (Holt)
firingdelay = firingdelay - 1;
recoil = max (0,recoil - 1);

if ((mouse_check_button(mb_left)) or gamepad_button_check(0,gp_shoulderlb)) and (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 15;
	with (instance_create_layer(x,y,"Projectile",ob_slipper_projectile))
	{
		speed = 10;
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction;
	}
}

//recoil for the slipper Holt
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

//slipper flipping when turning to the left Holt
if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
if (done == 0)
{
	vsp = vsp + grv;

	//Roach's horizontal collision with walls (Holt)
	if (place_meeting(x+hsp, y, ob_wall))
	{
		while (!place_meeting(x+sign(hsp),y,ob_wall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//Roach's vertical collision with walls (Holt)
	if (place_meeting(x, y+vsp, ob_wall))
	{
		if (vsp > 0) 
		{
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x,y+sign(vsp),ob_wall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}
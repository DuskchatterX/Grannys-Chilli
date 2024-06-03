//begin step for roach (Holt)
if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,ob_roach_dead))
	{
		//change direction of roach dead animation depending on which side its hit
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) !=0) image_xscale = sign (hsp);
	}
	//score kills (Holt)
	if (instance_exists(ob_player))
	{
		global.kills++;
		global.killsthisroom++;
		with (ob_game) killtextscale = 2;
		
	}
	instance_destroy();
}
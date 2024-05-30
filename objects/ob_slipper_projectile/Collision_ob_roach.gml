//projectile hitting enemy (Holt)
with (other)
{
	hp = hp - 1;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();
{
	audio_play_sound(sn_slipper,5,false);
}
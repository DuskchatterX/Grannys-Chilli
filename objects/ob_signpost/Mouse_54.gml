//when player in area of signpost (Holt)
if (point_in_circle(ob_player.x,ob_player.y,x,y,64)) && (!instance_exists(ob_text))
{
	with (instance_create_layer(x,y-64,layer,ob_text))
	{
		text = other.text;
		length = string_length(text);
	}
}
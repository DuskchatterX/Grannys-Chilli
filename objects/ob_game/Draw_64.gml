//Draw Score (Holt)
if (room !=r_Menu) && (instance_exists(ob_player)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills) + " Roaches Exterminated ",killtextscale,killtextscale,0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills) + " Roaches Exterminated ",killtextscale,killtextscale,0);
}
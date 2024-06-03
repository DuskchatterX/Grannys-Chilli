//Draw Text (Holt)
var halfw = w * 0.5;

//Draw the box (Holt)
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
draw_sprite(sp_marker,0,x,y);
draw_set_alpha(1);

//Draw Text (Holt)
DrawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x,y-h-border,text_current);
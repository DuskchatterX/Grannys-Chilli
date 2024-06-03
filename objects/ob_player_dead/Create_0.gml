hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;
//player dead create (Holt)
image_speed = 0;
image_index = 0;

audio_play_sound(sn_slipper,5,false);
//player slowmo when dead (Holt)
game_set_speed(30,gamespeed_fps);
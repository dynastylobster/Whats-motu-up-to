// Inherit the parent event
event_inherited();
x+= xspeed
if  global.character != "Motu" {
	instance_destroy();
}
if grounded {
	audio_play_sound(Snd_BlockBreak,0,0,global.sfxvolume/2,0,1.2)
		instance_create_depth(x,y,depth,O_ExplodeEffect);
		instance_destroy();
	}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//if speed > 0 {
//yspeed += grav
//y+= yspeed
//}
deathtimer--
if deathtimer <= 0 {
		if sprite_index = S_Screw {
			audio_play_sound(Snd_SmallExplode,0,0,global.sfxvolume,0,random_range(0.9,1.1));
			speed = 0;
			image_index = 0;
			sprite_index = S_SmallExplode;
		}
	}
if sprite_index = S_SmallExplode {
		if image_index >= 5 {
			instance_destroy();	
		}
	}
function HitAnyone(){

	if instance_exists(O_Slice) {
		with O_Slice {
			if done_slicing = false {global.stoptimer = 3;}
			done_slicing = true;
			drawpal = 3;
			pal = 3;
			mask_index = S_Empty;	
		}
	
	if instance_exists(O_Player) {
		with O_Player {
			running = true;	
		}
	}
	}
if !audio_is_playing(Snd_SliceHit) then	{audio_play_sound(Snd_SliceHit,0,0,global.sfxvolume,0,random_range(0.95,1.05))}
var parent =  object_get_parent(object_index) 

if !hit {

hittimer = 8;
currentpal = 8;
if !O_Player.downslicing {
hp-=O_Player.damage;
}
if O_Player.downslicing {
hp-=O_Player.damagedown
	}
hit = true;
}
}
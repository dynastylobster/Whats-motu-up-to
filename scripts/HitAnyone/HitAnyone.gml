function HitAnyone(){

/*
	if instance_exists(O_Slice) {
		with O_Slice {
			if done_slicing = false {global.stoptimer = 3;}
			done_slicing = true;
			drawpal = 3;
			pal = 3;
			mask_index = S_Empty;	
		}
*/
if instance_exists(O_AttackParent) {
		var attack = instance_nearest(x,y,O_AttackParent)
		if attack.active {
			if attack.willdamage = true {
				if !hit and attack.damage > 0 {
			audio_play_sound(Snd_SliceHit,0,0,global.sfxvolume,0,random_range(0.95,1.05))
			hittimer = 8;
			currentpal = 8;
			if !O_Player.downslicing and !immuneside {
					hp-=O_AttackParent.damage;
			}
				if O_Player.downslicing and !immunedown {
					hp-=O_AttackParent.damagedown
			}
if O_Player.downslicing {
		O_Player.xspeed = O_Player.facing * attack.downslice_yeet;
		O_Player.yspeed = - (attack.downslice_yeet*2)
		O_Player.boost = true;
}
			
global.stoptimer = 3;
hit = true;
}
	attack.done_attacking = true;
	attack.willdamage = false;
			}
		}
	}
	
	
	if instance_exists(O_Player) {
		with O_Player {
			running = true;	
		}
	}
	}
//if !audio_is_playing(Snd_SliceHit) then	{audio_play_sound(Snd_SliceHit,0,0,global.sfxvolume,0,random_range(0.95,1.05))}
//var parent =  object_get_parent(object_index) 

/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
playerframeinterval = basedeactivatetimer/3


if instance_exists(O_Player) {
		x = O_Player.x;
		image_xscale = O_Player.facing;
		y = O_Player.y;
		
		if (done_attacking == true) { currentattackstyle = noone; }
		if (currentattackstyle == noone || global.weapon == "scythe") {
	if O_Player.downslicing = false {
	sprite_index = attacksprite	
	} else {
	sprite_index = attackspritedown
	}
	currentattackstyle = sprite_index;
		}
//default functionality for checking age and inputs
if !global.paused {
	


	if active then age++
		
		if InputPressed(INPUT_VERB.ACTION) {
			if !active {
				
					//sounds
					switch global.weapon {
					case "sword":
					audio_play_sound(Snd_Slice,0,0,global.sfxvolume*0.5,0,random_range(0.93,1.1));
					break
					case "scythe":
					audio_play_sound(Snd_Slice,0,0,global.sfxvolume*0.5,0,random_range(0.90,1));
					break
					}
					
				//mechanics
				
					done_attacking = false;
					O_Player.slicing = true
					image_index = 0
					age = 0
					damagetimer = basedamagetimer;
					deactivatetimer = basedeactivatetimer;
					active = true;
							}
			}
			
		if !willdamage {
				if age >= damagetimer and !done_attacking {
					willdamage = true;
				}
			}
		if active {
			if age >= deactivatetimer  {
			O_Player.slicing = false;
			O_Player.downslicing = false;
			willdamage = false;
			done_attacking = true;
			active = false;
			}
		}
			

	//timing and shit tbh
	switch global.weapon {
	case "sword":

if !O_Player.grounded and InputPressed(INPUT_VERB.DOWN) {
	O_Player.yspeed = clamp(O_Player.yspeed,0,4)
	done_attacking = false;
	active = true
	age = 0
	willdamage = true
		O_Player.downslicing = true;
	}
if O_Player.downslicing {
	if done_attacking  {
image_index = 4;
willdamage = false;
active = false
	}
if O_Player.grounded {
	sprite_index = S_Empty
	willdamage = false
	done_attacking = true
		active = false;
		O_Player.downslicing = false
	}
 sprite_index = attackspritedown
} else {
SliceAnimation();	
}
	break;
	
	case "scythe":
if InputCheck(INPUT_VERB.DOWN) and willdamage {
			O_Player.downslicing = true;	
	}

SliceAnimation()
		if !O_Player.downslicing {image_angle = 0;}
	break;
	}
		
	}
	
}
mask_index = sprite_index;
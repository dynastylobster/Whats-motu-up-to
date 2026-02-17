/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
playerframeinterval = basedeactivatetimer/3


if instance_exists(O_Player) {
		x = O_Player.x;
		image_xscale = O_Player.facing;
		y = O_Player.y;
	if O_Player.downslicing = false {
	sprite_index = attacksprite	
	} else {
	sprite_index = attackspritedown
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
					case "sscythe":
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
SliceAnimation()
	break;
	
	case "scythe":
SliceAnimation()
		if O_Player.downslicing {image_angle = 270;} else {image_angle = 0;}
	break;
	}
		
	}
	
}
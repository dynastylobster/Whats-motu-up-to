//character animation stuff
/*if (keyboard_check_pressed(ord("P"))) {
	debugmode = !debugmode;
}*/

/*ds_list_clear(enemiesBelowMe);
if (place_meeting(x,y+8,O_EntityParent)) {
	var lastbestguy = noone;
	instance_place_list(x, y + 8 + yspeed, O_EntityParent, enemiesBelowMe, false);
	for (var i = 0; i < ds_list_size(enemiesBelowMe); i++) {
		var en = enemiesBelowMe[|i];
		if (en.isplatform) {
			if (lastbestguy == noone || lastbestguy.y > en.y) {
				platform = en;
				//ridingX = distance_to_point(en.x, y);
				//ridingY = distance_to_point(x, en.y) - en.height;
				ridingX = en.xspeed + en.knockspeed;
				ridingY = en.yspeed - en.knockspeed;
			}
		}
	}
} else {
	platform = noone;
	ridingX = 0;
	ridingY = 0;
}*/
if place_meeting(x,y+8,O_EntityParent) {
	var enemy = instance_place(x,y+8,O_EntityParent)
	if (enemy.isplatform == true) {
		platform = enemy;
	}  else {platform = baseplatform;}
} else {platform = baseplatform;}
if platform = baseplatform and !place_meeting(x,y+2,O_EntityParent) {
 if !place_meeting(x,y+1,[WALL,WALLTILE,SLOPE,SLOPETILE,SEMI,SEMITILE,O_Wall,O_Slope,O_Semi]) then grounded = false;
}

if global.character = "Billy" 
{
	behindspriteframe += 0.125
if !running and !hit and grounded and !slicing {
		image_speed = 1;
	}
if sprite_index = walksprite and abs(xspeed) < resetidleatxspeed {
	image_index = 0
	}
}
if global.character = "Motu" {
if grounded and xspeed = 0 image_speed = 0;	
}



//hair/tail stuff


behindspriteframe += behindspritespd
if abs(xspeed+yspeed) < 1 {
	behindspriteframe = 0;
} else {behindspritespd = abs(xspeed)/8 + abs(yspeed)/8}

//weapons stuff


if grounded {
		if downslicing = true {
				slicng = false
				}
		downslicing = false;

	global.scoremultiplier = 1;
	}
if landingtimer > 0 {
		global.stoptimer = 0
	}

if !global.stop {
	//allows a little leeway with jumping
	if place_empty(x,y+yspeed,[WALL,WALLTILE,O_Wall,platform]) {
		if place_meeting(x,y+8,[WALL,WALLTILE,O_Wall,platform]) {
		if InputPressed(INPUT_VERB.ACCEPT) {
			jumptimer = 18	
		}
		}
	if jumptimer > 0 jumptimer--
	}
	//coyote time
	if coyotetime > 0 coyotetime--
	
if !grounded {
	if yspeed < max_yspeed {
			yspeed += grav 
		}
	}


if place_meeting(x,y+1,[WALL,WALLTILE,platform]) or place_meeting(x,y+1,O_Wall) or sloping {
	yspeed = 0
	if grounded = false then landingtimer = 4;
	grounded = true
	} else {
	if grounded {
		coyotetime = 6;
		if !sloping {
			/*if (!place_meeting(x,y+1,O_EntityParent)) {
				grounded = false;	
			} else if (platform != noone) {
				grounded = true;
				//x = platform.x + ridingX;
				//y = platform.y + ridingY;
				//xspeed += platform.xspeed;
				//yspeed += platform.yspeed;
			} */
		}
	}
}

if (!place_meeting(x,y-abs(yspeed),[WALL,WALLTILE,platform]) and !place_meeting(x,y-abs(yspeed),O_Wall) ) and !sloping {
	
y+= yspeed + ridingY;
} else if !sloping {
	    audio_play_sound(Snd_Land,0,0,global.sfxvolume,0,1.3)
		yspeed = 1
		y++
	}


if grounded or coyotetime > 0 {
if sprite_index = jumpsprite then sprite_index = runsprite;
if InputPressed(INPUT_VERB.ACCEPT) or (place_meeting(x,y+1,[WALL,WALLTILE,O_Wall,platform]) and jumptimer > 0) or (landingtimer > 0 and InputPressed(INPUT_VERB.ACCEPT)) {
	audio_play_sound(Snd_Jump,0,0,global.sfxvolume*1.25,0,1);
		yspeed = -jumpspeed
		if sloping {y-= 2;sloping = false;}
		grounded = false
		y-= 1
	}
	while place_meeting(x,y,[WALL,WALLTILE,platform]) or place_meeting(x,y,O_Wall) {
			y-= 0.125
		}
	if !InputCheck(INPUT_VERB.RIGHT) and !InputCheck(INPUT_VERB.LEFT) {
		if !InputCheck(INPUT_VERB.ACTION) {
		running = false;
		}
		
		if xspeed > 0 xspeed -= accel 
		if xspeed < 0 xspeed += accel
	}
}


	if InputCheck(INPUT_VERB.LEFT) {
			if !slicing {facing = -1;}
			
			if !running {
			if xspeed > (-max_walkspeed) {
					xspeed -= accel
				}
			}
			if running {
			if xspeed > (-max_runspeed) {xspeed -= accel}	
			}
				
				
			}
	if InputCheck(INPUT_VERB.RIGHT) {
		if !slicing {facing = 1;}
		
		if !running {
			if xspeed < (max_walkspeed) {
					xspeed += accel
				}
			}
			if running {
			if xspeed < (max_runspeed) {xspeed += accel}	
			}
				
				
				
			}
			
		if !running and !slicing {
			if abs(xspeed) > 0 {sprite_index = walksprite; image_speed = 1}
			if xspeed = 0 {sprite_index = idlesprite;}
		}
		
		if running and !slicing {
			if abs(xspeed) > 0 {sprite_index = runsprite; image_speed = 1}
			if xspeed = 0 {sprite_index = idlesprite;}
		}

if !place_meeting(x+xspeed+(1*sign(xspeed)),y,[WALL,WALLTILE,platform]) and !place_meeting(x+xspeed+(1*sign(xspeed)),y,O_Wall){
	x+= xspeed + ridingX;
	}

if place_meeting(x,y+yspeed,[SEMI,SEMITILE]) or place_meeting(x,y+yspeed,O_Semi){
	if yspeed >= 0 {
			while place_meeting(x,y,[SEMI,SEMITILE]) {
			y-= 0.25
			if grounded = false then {landingtimer = 4}
			grounded = true
			yspeed = 0;
			}
		}
	}
	
if place_meeting(x,y+2,[SEMI,SEMITILE]) or place_meeting(x,y+2,O_Semi){
		if yspeed >= 0 {grounded = true}
	}

if !grounded and !slicing {
		if yspeed < 0 {sprite_index = jumpsprite; image_speed = 0; image_index = 0}
		if yspeed > 0 {sprite_index = jumpsprite; image_speed = 0; image_index = 1}
	}

if !InputCheck(INPUT_VERB.ACCEPT) and !boost{
		if yspeed < 0 {
				yspeed*= 0.8
			}
	}
	
/*
if InputPressed(INPUT_VERB.ACTION) {
		if !instance_exists(O_Slice) and !downslicing {
			slicing = true;
			//instance_create_depth(x,y,depth,O_Slice)	
		}
	}
	*/
if InputPressed(INPUT_VERB.ACTION) {
		running = true;
	}
	
	if landingtimer > 0 {
		if landingtimer = 4 {
		audio_play_sound(Snd_Land,0,0,global.sfxvolume,0,random_range(1,1.2))	
		}
		landingtimer--
		sprite_index = landsprite
	}
if slicing {landingtimer = 0;sprite_index = slicesprite}

//undo speed gained by slopes
if !sloping and !running {
		if xspeed > 0 {
				if xspeed > max_walkspeed then {xspeed -= accel/16};
			}
		if xspeed < 0 {
				if xspeed < -max_walkspeed then {xspeed += accel/16};
			}
	}
	
//fix tiny momentum retention

if abs(xspeed) < 0.25 and !running {
		xspeed = 0;
	}


//Depricated downslice code
/*
if !grounded and InputPressed(INPUT_VERB.DOWN) and (O_LevelObject.hassword = true) and hittimer < 70 {
		if !downslicing and !place_meeting(x,y+9,[WALL,WALLTILE]) and !place_meeting(x,y+9,O_Wall) {
			xspeed*= 0.5
			audio_play_sound(Snd_Slice,0,0,global.sfxvolume*0.35,0,1.3);
			downslicing = true;	
		} else {
			downslicing = false;	
		}
	}
*/


//fix bug that gets the game to stop for some fucking reason
if place_meeting(x,y+2,[WALL,WALLTILE,platform]) or place_meeting(x,y+2,O_Wall) or place_meeting(x,y+2,O_Slope) or place_meeting(x,y+2,[SLOPE,SLOPETILE]) or place_meeting(x,y+2,[SEMI,SEMITILE]) or place_meeting(x,y+2,O_Semi) {
		downslicing = false;
	}

if downslicing {
		sprite_index = downslicesprite;
		image_speed = 1;
		if grounded then downslicing = false;
	}
if grounded then boost = false;

if hittimer <= 0 {
hit = false	
} else {
if hittimer > 70 then boost = false;
hittimer--	
}

}
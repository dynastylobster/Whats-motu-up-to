/// @description Insert description here
// You can write your code in this editor
CheckOnscreen(true,true);
if global.brightsprites {
		brightoffset = 4;
	} else {
	brightoffset = 0;
	}

if !hit {
		draw_x = x;
		currentpal = initialpalette;
	}
if hit {
		draw_x = irandom_range(x-2,x+2);
	if hittimer > 0 {hittimer--;}
	}
if hittimer <= 0 {

	hit = false;
	
	}

if hp <= 0 {
	if !dead {
		instance_create_depth(int64(x),int64(y),depth,O_ExplodeEffect)
	audio_play_sound(Snd_SmallExplode,0,0,global.sfxvolume,0,0.6)
		var angle = 45;
	instance_create_depth(x,y,depth,O_ScrewParticle).direction = angle;
	instance_create_depth(x,y,depth,O_ScrewParticle).direction = angle+90;
	instance_create_depth(x,y,depth,O_ScrewParticle).direction = angle+180;
	instance_create_depth(x,y,depth,O_ScrewParticle).direction = angle+270;
	}
	
	dead = true;	
}

if !onscreen {
	if (startx < CAM_X-16 or startx > CAM_X+CAM_W+16) or (starty < CAM_Y-16 or starty > CAM_Y+CAM_H+16)
	{
	dead = false;
	x = startx;
	y = starty;
	hp = startHP;
	}
	
	
}

/*if isplatform and place_meeting(x,y-4,O_Player) and !global.stop{
		while collision_line(O_Player.x,y,O_Player.x,y-0.25,O_Player,16,false) {
			O_Player.y-= 0.25 + yspeed
		}
		//O_Player.x += (xspeed/2)
		//O_Player.x += (xspeed/4)
		//O_Player.x += (xspeed/8)
		//O_Player.x += (x - xprevious)
	    O_Player.x += xspeed
		O_Player.x = int64(O_Player.x)
	}*/
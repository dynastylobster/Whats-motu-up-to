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
if hittimer <= 0 hit = false;

if hp <= 0 {
	if !dead {
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
	dead = false;
	x = startx;
	y = starty;
	hp = startHP;
}
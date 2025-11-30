// Inherit the parent event
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
	dead = false;
	x = startx;
	y = starty;
	hp = startHP;
}


if hit {
if audio_is_playing(Snd_SliceHit) {
audio_play_sound(Snd_Dink,0,0,global.sfxvolume,0,1);
audio_stop_sound(Snd_SliceHit)	
}
}

if !dead {
if hp < 3 hp++
}
if owner.dead {
dead = true;		
	}
if !global.stop {

if !active and InputPressed(INPUT_VERB.ACTION) {
	audio_play_sound(Snd_Slice,0,0,global.sfxvolume*0.5,0,random_range(0.93,1.1));	
	active = true;
}

if active {
if inactivetimer > 0 inactivetimer--
}
if inactivetimer <= 0 {
	done_slicing = false
	active = false
}

if global.weapon != "sword" {
if motu != noone {
		x = motu.draw_x+xoffset;
		y = motu.draw_y+yoffset;
		image_xscale = motu.facing;
	}	
}


switch global.weapon {

case "sword":

if !done_slicing {
if (image_index < 1) or (image_index >= 2) {
		mask_index = S_Empty;
	}
if image_index > 1 and image_index < 2 {
		motu.running = true;
		mask_index = sprite_index
	}
}

if motu != noone {
		x = motu.draw_x+xoffset;
		y = motu.draw_y+yoffset;
		image_xscale = motu.facing;
		if image_index >= 4 {
		motu.slicing = false
		//instance_destroy();
		}
	}
image_speed = !global.stop
drawpal = int64(pal)

if done_slicing {
		if pal > 0 {
			pal -= 0.5
		}
	}
	
	break;
	
}
	
}
if !global.stop {

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
		x = motu.draw_x;
		y = motu.draw_y;
		image_xscale = motu.facing;
		if image_index >= 4 {
		motu.slicing = false
		instance_destroy();
		}
	}
image_speed = !global.stop
drawpal = int64(pal)

if done_slicing {
		if pal > 0 {
			pal -= 0.5
		}
	}
}
/// @description Insert description here
// You can write your code in this editor
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
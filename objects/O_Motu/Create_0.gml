// Inherit the parent event
depth -= 25
event_inherited();
draw_x = int64(x);
draw_y = ceil(y);
facing = 1;
running = false;
slicing = false;
landingtimer = 0;
downslicing = false;
boost = false;
GenerateHitBox(x,y,1,5,-2,7,O_Motu,0,true);
GenerateHitBox(x,y,12,12,-7,8,O_Motu,1,true);
if global.brightsprites = true {
		BrightPalette = true;
	}
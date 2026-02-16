// Inherit the parent event
//was just for the video {audio_play_sound(MusFactory,0,true,1,0,1);}
instance_create_depth(x,y,depth-1,O_Attack);
mask_index = S_MotuIdle
depth -= 25
event_inherited();
hit = false;
hittimer = 0;
draw_x = int64(x);
draw_y = ceil(y);
facing = 1;
running = false;
slicing = false;
landingtimer = 0;
downslicing = false;
boost = false;
GenerateHitBox(x,y,1,5,-2,7,O_Player,0,true);
GenerateHitBox(x,y,12,12,-7,8,O_Player,1,true);
if global.brightsprites = true {
		BrightPalette = true;
	}
//initializesprites
SetCostumes()
// Inherit the parent event
event_inherited();
draw_x = int64(x);
draw_y = ceil(y);
facing = 1;
running = false;
slicing = false;
landingtimer = 0;
GenerateHitBox(x,y,1,5,-2,7,O_Motu,0,true);
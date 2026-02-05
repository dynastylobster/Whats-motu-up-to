//draw self
draw_set_font(TinyFont);
pal_swap_set(S_motupal,BrightPalette,0);

if (!hit) or (hit and hittimer < 60 and hittimer%2 = 0) or (hit and hittimer > 60) {

if hit and hittimer > 60 {
		pal_swap_set(S_motupal,3+BrightPalette,0);
	}

draw_sprite_ext(sprite_index,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));
if O_LevelObject.hassword {
if sprite_index = S_MotuIdle {draw_sprite_ext(S_IdleSword,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = S_MotuLand {draw_sprite_ext(S_WalkSword,1,draw_x,draw_y+2,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = S_MotuWalk {draw_sprite_ext(S_WalkSword,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = S_MotuJump {draw_sprite_ext(S_JumpSword,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = S_MotuRun {draw_sprite_ext(S_RunSword,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = S_MotuSlice {draw_sprite_ext(S_SliceSword,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
}

pal_swap_set(S_motupal,BrightPalette,0);
}
pal_swap_reset();

if global.debugmode {
draw_text(x,y-32,"sloping:"+string(sloping))
draw_text(x,y-50,"grounded:"+string(grounded))
}

//draw_self();
//draw_text(x,y-50,string(sprite_index))
//draw_text(x,y-24,string(grounded))
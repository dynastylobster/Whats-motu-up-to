//draw self
draw_set_font(TinyFont);
pal_swap_set(S_motupal,BrightPalette,0);
//draw_text(x,y-50,"slicing:"+string(slicing))
if (!hit) or (hit and hittimer < 60 and hittimer%2 = 0) or (hit and hittimer > 60) {

if hit and hittimer > 60 {
		pal_swap_set(S_motupal,3+BrightPalette,0);
	}


if sprite_index = idlesprite {draw_sprite_ext(weaponidlesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = landsprite {draw_sprite_ext(weaponwalksprite,1,draw_x,draw_y+2,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = walksprite {draw_sprite_ext(weaponwalksprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = jumpsprite {draw_sprite_ext(weaponjumpsprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = runsprite {draw_sprite_ext(weaponrunsprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = slicesprite {draw_sprite_ext(weaponslicesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
draw_sprite_ext(sprite_index,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));
if sprite_index = downslicesprite {draw_sprite_ext(downslicesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = downslicesprite {draw_sprite_ext(weapondownslicesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
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
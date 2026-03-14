//draw self
draw_set_font(TinyFont);
pal_swap_set(S_motupal,BrightPalette,0);
//draw_text(x,y-50,"slicing:"+string(slicing))
if (!hit) or (hit and hittimer < 60 and hittimer%2 = 0) or (hit and hittimer > 60) {

if hit and hittimer > 60 {
		pal_swap_set(S_motupal,3+BrightPalette,0);
	}
	
if global.character = "Motu"
{draw_sprite_ext(behindsprite,behindspriteframe,draw_x,draw_y+1+(int64(yspeed/2)),facing,image_yscale,image_angle,c_white,(1-(global.debugmode)));}
if global.character = "Billy"
{draw_sprite_ext(behindsprite,behindspriteframe,draw_x,draw_y+1+(int64(yspeed/2)),facing,image_yscale,image_angle,c_white,(1-(global.debugmode)));}

pal_swap_set(S_SlicePal,slicepaloffs,0);

if global.character = "Billy" {
		idleoffsetbilly = int64(image_index)
		if image_index > 3 idleoffsetbilly = int64(image_index-3)
		if image_index > 4 idleoffsetbilly = int64(image_index-5)
	}
	
if sprite_index = idlesprite {draw_sprite_ext(weaponidlesprite,image_index,draw_x,draw_y+1-idleoffsetbilly,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = landsprite {draw_sprite_ext(weaponwalksprite,1,draw_x,draw_y+2,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = walksprite {draw_sprite_ext(weaponwalksprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = jumpsprite {draw_sprite_ext(weaponjumpsprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = runsprite {draw_sprite_ext(weaponrunsprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = slicesprite {draw_sprite_ext(weaponslicesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}

pal_swap_set(S_motupal,BrightPalette,0);

draw_sprite_ext(sprite_index,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));
if sprite_index = downslicesprite {draw_sprite_ext(downslicesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}
if sprite_index = downslicesprite {draw_sprite_ext(weapondownslicesprite,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));}


if global.character = "Motu" and hp >= 3 {
		if image_index >= 2 {
		draw_sprite_ext(S_MotuHelm,0,draw_x,draw_y,facing,1,0,c_white,1);
		} 
		if image_index < 2 {
		draw_sprite_ext(S_MotuHelm,0,draw_x,draw_y+1,facing,1,0,c_white,1);
		}
	}

}
pal_swap_reset();

if global.debugmode {
draw_text(x,y-32,"sloping:"+string(sloping))
draw_text(x,y-50,"grounded:"+string(grounded))
}

//draw_self();
//draw_text(x,y-50,string(sprite_index))
//draw_text(x,y-24,string(grounded))
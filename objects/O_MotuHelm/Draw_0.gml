if global.character = "Motu" 
{

	if !O_Player.hit {
	pal_swap_set(S_motupal,currentpal+brightoffset,false)
	}
if hit and nonhittimer=0 {
	currentpal--;
	currentpal = clamp(currentpal,1,8);
	pal_swap_set(S_motupal,currentpal,false)
	}
draw_sprite_ext(sprite_index,image_index,int64(draw_x),floor(int64(y)),image_xscale,image_yscale,0,c_white,1);
	pal_swap_reset();
	
}
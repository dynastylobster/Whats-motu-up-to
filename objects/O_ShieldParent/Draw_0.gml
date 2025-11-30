if !dead {	
	pal_swap_set(global.enemypal,initialpalette,false)
draw_sprite_ext(sprite_index,image_index,int64(draw_x),floor(int64(y)),image_xscale,image_yscale,0,c_white,1);
	pal_swap_reset();
}
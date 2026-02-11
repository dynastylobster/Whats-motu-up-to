if paloffset < 3 {
paloffset ++
} else {
paloffset = 0
}

	if !hit {
		
	pal_swap_set(global.enemypal,currentpal+brightoffset,false)
	}
if hit {
//	currentpal--;
//	currentpal = clamp(currentpal,1,8);
	pal_swap_set(S_EnemyPalHit,currentpal+paloffset,false)
	}
	
//draw_sprite_ext(sprite_index,image_index,int64(draw_x),floor(int64(y)),image_xscale,image_yscale,0,c_white,1);

draw_set_font(global.scorefont2)
draw_set_halign(fa_center)
draw_text(floor(x),floor(y),string(_score/2))
draw_set_halign(fa_left)

pal_swap_reset();

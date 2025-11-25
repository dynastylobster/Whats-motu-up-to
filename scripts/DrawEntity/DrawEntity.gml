// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawEntity(){
	if !hit {
	pal_swap_set(global.enemypal,currentpal+brightoffset,false)
	}
if hit {
	currentpal--;
	currentpal = clamp(currentpal,1,8);
	pal_swap_set(S_EnemyPalHit,currentpal,false)
	}
draw_sprite_ext(sprite_index,image_index,int64(draw_x),floor(int64(y)),image_xscale,image_yscale,0,c_white,1);
	pal_swap_reset();
}
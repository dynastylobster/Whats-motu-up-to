/// @description Insert description here
// You can write your code in this editor
if image_index = 1 {pal_swap_set(S_EnemyPal1,3,false);}
if image_index = 0 {pal_swap_set(S_EnemyPal1,1,false);}
draw_sprite_ext(sprite_index,image_index,draw_x,y,image_xscale,image_yscale,0,c_white,1);
pal_swap_reset();
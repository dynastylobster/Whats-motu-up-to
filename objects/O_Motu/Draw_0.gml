//draw self
pal_swap_set(S_motupal,BrightPalette,0);
draw_sprite_ext(sprite_index,image_index,draw_x,draw_y,facing,image_yscale,image_angle,c_white,1);
pal_swap_reset();
//draw_self();
//draw_text(x,y-50,string(sprite_index))
//draw_text(x,y-24,string(grounded))
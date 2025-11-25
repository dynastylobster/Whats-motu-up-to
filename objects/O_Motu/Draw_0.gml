//draw self
draw_set_font(TinyFont);
pal_swap_set(S_motupal,BrightPalette,0);
draw_sprite_ext(sprite_index,image_index,draw_x,draw_y+1,facing,image_yscale,image_angle,c_white,(1-(global.debugmode/2)));
pal_swap_reset();

if global.debugmode {
draw_text(x,y-32,"sloping:"+string(sloping))
draw_text(x,y-50,"grounded:"+string(grounded))
}

//draw_self();
//draw_text(x,y-50,string(sprite_index))
//draw_text(x,y-24,string(grounded))
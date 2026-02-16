pal_swap_set(S_SlicePal,drawpal,false);
if active {
draw_sprite_ext(sprite_index,image_index,int64(x),int64(y),image_xscale,image_yscale,image_angle,c_white,1)
}
pal_swap_reset();
/// @description Insert description here
// You can write your code in this editor
if instance_exists(O_Motu) {
	
var scorex = (CAM_X) + (CAM_W/2)
draw_set_halign(fa_center)
draw_set_font(global.scorefont)
draw_text(scorex,CAM_Y+8,global.score)
draw_set_halign(fa_left)
}

if FilterMode = "Bilinear" or FilterMode = "Sharp Bilinear" then gpu_set_tex_filter(true)
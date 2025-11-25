/// @description Insert description here
// You can write your code in this editor
if global.debugmode{
draw_set_color(c_black)
draw_rectangle(bbox_left,bbox_top-0.25,bbox_right,bbox_bottom-0.25,true);
	if hitboxnum = 0 draw_set_color(#FFFFFF)
	if hitboxnum = 1 draw_set_color(#FF4444)
	if hitboxnum = 2 draw_set_color(#44FF44)
	if hitboxnum = 3 draw_set_color(#4444FF)
	if hitboxnum = 5 draw_set_color(#FFFF22)
draw_rectangle(bbox_left,bbox_top-0.25,bbox_right,bbox_bottom-0.25,true);
draw_set_color(c_white)
//draw_text(x,y,string(owner))
	if owner.object_index = O_Motu and hitboxnum = 0 {
		draw_line(x,y+4,x+owner.facing*4,y+4)	
		draw_set_color(c_grey)
		draw_line(x,y+4,x-owner.facing*4,y+4)	
		draw_set_color(c_white)
		draw_line(x,y-1,x+owner.facing*8,y-1)
	}

}


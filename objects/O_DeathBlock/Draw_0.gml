/// @description Insert description here
// You can write your code in this editor
if onscreen {
	draw_sprite_ext(sprite_index,1,int64(x),int64(y),1,1,0,c_black,1);
draw_set_color(c_white)

pal_swap_set(S_EnemyPal1,(O_LevelObject.DeathBlockPal),false);

if hasblock {
draw_sprite_ext(S_DeathBlockTexture,1,int64(x)+8,int64(y)+8,1,1,blockrotation,c_white,1);	
}




if !surrounded {
	if !meetingright {
	draw_sprite_ext(S_DeathEdge,age/4,int64(draw_x)+16,floor(int64(y)),image_xscale,image_yscale,0,c_white,1);	
	}
	if !meetingleft {
	draw_sprite_ext(S_DeathEdge,age/4,int64(draw_x),floor(int64(y)),-1,image_yscale,0,c_white,1);	
	}
	if !meetingup {
	draw_sprite_ext(S_DeathEdge,age/4,int64(draw_x),floor(int64(y)),1,image_yscale,90,c_white,1);	
	}
	if !meetingbottom {
	draw_sprite_ext(S_DeathEdge,age/4,int64(draw_x)+16,floor(int64(y)+16),1,image_yscale,270,c_white,1);	
	}
}

//if hasskull {
//draw_sprite_ext(sprite_index,2,int64(x),int64(y+skully+1),1,1,0,c_white,1);	
//}


}
if !surrounded {
pal_swap_reset()
}
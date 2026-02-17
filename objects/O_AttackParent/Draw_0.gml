/// @description Insert description here
// You can write your code in this editor
var slicepaloffset
switch global.character {
		case "Motu":
		slicepaloffset = 0
		break;
		case "Billy": 
		slicepaloffset = 4
		break;
		case "Banan":
		slicepaloffset = 8
		break;
	}

pal_swap_set(S_SlicePal,slicepaloffset,false)
if active {

	draw_sprite_ext(sprite_index,image_index,int64(draw_x),floor(int64(y)),image_xscale,image_yscale,0,c_white,1);
	}
pal_swap_reset();

/*
draw_text(x,y-55,"active:"+string(active))
draw_text(x,y-40,"willdamage:"+string(willdamage))
draw_text(x,y-25,"age:"+string(age))
*/
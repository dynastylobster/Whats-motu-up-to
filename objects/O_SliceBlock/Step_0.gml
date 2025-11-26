/// @description Insert description here
// You can write your code in this editor
if deathtimer > -1 and dead {
	draw_x = int64(x+random_range(-2,2))
	draw_x = O_SliceBlock.draw_x;
	deathtimer--	
}
if deathtimer <= -1 {
		instance_create_depth(x,y-10,depth-50,O_SliceBlockParticle).direction = 315
		instance_create_depth(x,y-10,depth-50,O_SliceBlockParticle).direction = 225
		instance_create_depth(x,y+10,depth-50,O_SliceBlockParticle).direction = 0
		instance_create_depth(x,y+10,depth-50,O_SliceBlockParticle).direction = 180
		instance_destroy();
	}

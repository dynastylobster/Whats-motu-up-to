draw_x = int64(x);
draw_y = ceil(y);

//moving platform stuff

if place_meeting(x,y+yspeed,O_EntityParent) {
if instance_nearest(x,y+8,O_EntityParent).isplatform = true and !grounded {
		
		while !place_meeting(x,y+1,O_EntityParent) and yspeed > 0 {
			y+= 0.25
		}
		x+= instance_nearest(x,y+8,O_EntityParent).x - instance_nearest(x,y+8,O_EntityParent).xprevious
		y+= instance_nearest(x,y+8,O_EntityParent).y - instance_nearest(x,y+8,O_EntityParent).yprevious
		if !grounded {
		landingtimer = 4;	
		}
		grounded = true;
		yspeed = clamp(yspeed,-5,0)
	}
}
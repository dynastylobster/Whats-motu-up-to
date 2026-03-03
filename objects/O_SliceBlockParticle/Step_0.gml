y+= yspeed
yspeed += grav
fliptimer--
if fliptimer = 0 {
	image_xscale= -image_xscale
	fliptimer = 8
}
if y> room_height+12 {instance_destroy();}

if place_meeting(x,y+yspeed,[WALL,WALLTILE,SLOPE,SLOPETILE]) and !bounced and !place_meeting(x,y,O_SliceBlock) {
		yspeed = random_range(-1.5,-2.2)
speed = random_range(0.8,1.2);
		bounced = true
	}
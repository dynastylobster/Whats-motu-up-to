y+= yspeed
yspeed += grav
fliptimer--
if fliptimer = 0 {
	image_xscale= -image_xscale
	fliptimer = 8
}
if y> room_height+12 {instance_destroy();}
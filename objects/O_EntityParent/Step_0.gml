/// @description Insert description here
// You can write your code in this editor
if nonhittimer > 0 {
nonhittimer--	
}
if isenemy {
if !global.stop {
if knockspeed > 0 knockspeed -= 0.125
if knockspeed < 0 knockspeed += 0.125


if (knockbackChangesDirection && knockspeed != 0) {
	xspeed = SetSign(xspeed, knockspeed);
	walkspeed = SetSign(walkspeed, knockspeed);
	}

	if hasgravity {
		
		if !grounded {
		y+= yspeed
		yspeed += grav
		} else {yspeed = 0}
		
		if place_meeting(x,abs(y+yspeed),[WALL,WALLTILE,SEMI,SEMITILE,SLOPE,SLOPETILE]) {
				grounded = true;
		}
		while grounded and !place_meeting(x,y+1,[WALL,WALLTILE,SEMI,SEMITILE,SLOPE,SLOPETILE]) {
				y+= 0.25
			}
		if place_meeting(x,y+1,[SLOPE,SLOPETILE]) {
			sloping = true;	
		} else {sloping = false;}
		
		}

	if !place_meeting(x+xspeed,y,[O_Wall,WALL,WALLTILE,O_SliceBlock]) {
		x += xspeed + knockspeed
	}
	if knockspeed > 0 {
	xspeed = 0;	
	}
	if place_meeting(x+xspeed+knockspeed+(2*sign(xspeed)),y,[O_Wall,WALL,WALLTILE,O_SliceBlock]) {
		knockspeed *= -1
		//knockspeed = sign(knockspeed)*2 // could be an issue
		if (walking) {
			walkspeed *= -1;
			xspeed = walkspeed;
		} else {
			xspeed *= -1
		}
	}
	
	if !place_meeting(x,y+yspeed,[WALL,WALLTILE,O_Wall]) {
		y += yspeed
	}

	
}

if hasgravity and !isenemy {
		
		if !grounded {
		y+= yspeed
		yspeed += grav
		} else {yspeed = 0}
		
		if place_meeting(x,abs(y+yspeed),[WALL,WALLTILE,SEMI,SEMITILE,SLOPE,SLOPETILE]) {
				grounded = true;
		}
		while grounded and !place_meeting(x,y+1,[WALL,WALLTILE,SEMI,SEMITILE,SLOPE,SLOPETILE]) {
				y+= 0.25
			}
		if place_meeting(x,y+1,[SLOPE,SLOPETILE]) {
			sloping = true;	
		} else {sloping = false;}
		
		}

if walking {
	if (xspeed < walkspeed) { xspeed += 0.01; }
	if (xspeed > walkspeed) { xspeed -= 0.01; }
	
	if place_meeting(x,y,[WALL,WALLTILE]) {
			y-= 0.25
		}

		if place_meeting(x+walkspeed,y,[WALL,WALLTILE]) or place_meeting(x+walkspeed,y,O_Wall) {
				walkspeed *= -1
				xspeed = walkspeed
			}
		// turn on ledges
		if hasgravity {
				if !collision_line(x,y-10,x,y+24,[WALL,WALLTILE,SLOPE,SLOPETILE,SEMI,SEMITILE],16,false) and !collision_line(x,y-10,x,y+24,O_Wall,16,false) and !collision_line(x,y,x,y+24,O_Slope,16,false) and !collision_line(x,y,x,y+24,O_Semi,16,false) && yspeed == 0 && grounded {
				walkspeed *= -1
				xspeed = walkspeed
				}
			}
	if hit {xspeed = 0}

	}


movementFacing = sign(xspeed);

	

}
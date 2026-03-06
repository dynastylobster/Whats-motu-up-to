/// @description Insert description here
// You can write your code in this editor
if nonhittimer > 0 {
nonhittimer--	
}
if isenemy {
if !global.stop {
if knockspeed > 0 knockspeed -= 0.25
if knockspeed < 0 knockspeed += 0.25

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

	if !place_meeting(x+xspeed,y,[WALL,WALLTILE]) {
		x += xspeed + knockspeed
	}
	
	if !place_meeting(x,y+yspeed,[WALL,WALLTILE]) {
		y += yspeed
	}

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
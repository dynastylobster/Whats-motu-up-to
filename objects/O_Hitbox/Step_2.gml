/// @description Insert description here
// You can write your code in this 
x = owner.x + xoffset
//y = owner.y + yoffset
if !global.stoptimer {

if !instance_exists(owner) {
		instance_destroy();
		exit;
	}
if instance_exists(owner) {
if !following {
switch owner.object_index {
	
		case  O_OnScreenTest : {
			
			if hitboxnum = 0 {
				y = owner.y + yoffset
				if place_meeting(x,y,WALL) {
					owner.currentpal = 1
					owner.touchingtiles = true;
				} else {owner.currentpal = 0; owner.touchingtiles = false;}	
			}
			break;
		}
		
		case O_HitBoxTest: {
				if hitboxnum = 0 {
				if place_meeting(x,y,O_OnScreenTest.hitbox[0]) {
				owner.currentpal = 2
				} else owner.currentpal = 0;
			}
		}
		break;
		
	}
}
	
	if following {
		x = owner.x + xoffset
		y = owner.y + yoffset
		
		//interactions
		switch owner.object_index {
				case O_All:{
					
				}
				break;
				
		case O_HitBoxTest: {
				if hitboxnum = 0 {
				if place_meeting(x,y,O_OnScreenTest.hitbox[0]) {
				owner.currentpal = 2
				} else owner.currentpal = 0;
			}
		}
		break;
		
				case O_Player: {
				if hitboxnum = 0 {
					//active slope mode.
				while place_meeting(x,y+1,[SLOPE,SLOPETILE]) or (place_meeting(x,y+1,O_Slope) and owner.yspeed >= 0) {
								on = true;
					with owner {		
									if !grounded then landingtimer = 4;
									sloping = true;
									if yspeed > 0 then {yspeed = 0;}
									grounded = true;
									y-= 0.25
							} 
							y = owner.y + yoffset
						} 
				
	/*fix the transition between slope and floor. removing this lock up the game */		
	if !place_meeting(x,y+2,[WALL,WALLTILE]) and !place_meeting(x,y,O_Wall) {
	//check to see if the slope is below you but youre not touching it, so move motu down
				while (owner.grounded) and (!place_meeting(x,y+1,[SLOPE,SLOPETILE]) and !place_meeting(x,y,O_Slope) ) and owner.sloping and owner.yspeed >= 0 and owner.downslicing = false
				{owner.y+=0.25; y = owner.y + yoffset;}
	}
						// if youre not near the slope, stop thinking you be sloping
					if !place_meeting(x,y+5,[SLOPE,SLOPETILE]) and !place_meeting(x,y+5,O_Slope) then {on = false; owner.sloping = false;}
						if abs(owner.xspeed) > 1 {
						if collision_line(x,y+4,x+owner.facing*4,y+4,[SLOPE,SLOPETILE],true,false) or collision_line(x,y+4,x+owner.facing*4,y+4,O_Slope,true,false) {
								if owner.facing = 1 {owner.xspeed -= 0.25}
								if owner.facing = -1 {owner.xspeed += 0.25}
							}
						if collision_line(x,y-1,x+owner.facing*8,y-1,[SLOPE,SLOPETILE],true,false) or collision_line(x,y-1,x+owner.facing*8,y-1,O_Slope,true,false) {
								if owner.facing = 1 {owner.xspeed -= 0.5}
								if owner.facing = -1 {owner.xspeed += 0.5}
							}
							
						if (collision_line(x,y+4,x-owner.facing*4,y+4,[SLOPE,SLOPETILE],true,false) or collision_line(x,y+4,x-owner.facing*4,y+4,O_Slope,true,false) ) and abs(owner.xspeed) < (owner.max_walkspeed+0.75) {
								if owner.facing = 1 {owner.xspeed += 0.125}
								if owner.facing = -1 {owner.xspeed -= 0.125}
							}
						}
				}
				
			if hitboxnum = 1 {
				if owner.downslicing {
					if instance_place(x,y,O_EntityParent) {
						if (instance_place(x,y,O_EntityParent).dead = false) and (instance_place(x,y,O_EntityParent).sliceable = true) {			
						with instance_place(x,y,O_EntityParent) {
							if global.stoptimer <= 0 {
							HitAnyone();
							global.stoptimer = 3;
							}
						}
					instance_create_depth(x+irandom_range(4,10),y+irandom_range(6,8),depth-50,O_SmallExplode)
					instance_create_depth(x+irandom_range(4,10),y+irandom_range(6,8),depth-50,O_SmallExplode)
					instance_create_depth(x+irandom_range(4,10),y+irandom_range(6,8),depth-50,O_SmallExplode)
					
					owner.xspeed = owner.facing*3
					owner.yspeed = -6
					owner.grounded = false;
					owner.boost = true;
					if owner.downslicing {
					owner.downslicing = false;
					}
						
					
					}
					}
					
				if instance_place(x,y,O_ShieldParent) {
					if instance_place(x,y,O_ShieldParent).dead = false and instance_place(x,y,O_ShieldParent).down = true{
						with instance_place(x,y,O_ShieldParent) {
							HitAnyoneNoScore();
						}
					if owner.downslicing {
					owner.xspeed = owner.facing*3
					owner.yspeed = -6
					owner.boost = true;
					if owner.downslicing {
					owner.downslicing = false;
					}
						}
					}
					
					
					}
				if instance_place(x,y,O_SliceBlock) {
						with  instance_place(x,y,O_SliceBlock) {
						BreakSliceBlock();	
						}
						owner.xspeed = owner.facing*3
					owner.yspeed = -6
					owner.boost = true;
					if owner.downslicing {
					owner.downslicing = false;
					}
				}
					
				}
				
			}
			

			break;
		}
	}
	
	
}
}

}
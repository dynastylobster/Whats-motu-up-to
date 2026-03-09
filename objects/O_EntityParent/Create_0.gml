if !sliceable then mask_index = S_Empty
onscreen = false;
CheckOnscreen(true,true);
pal = 0;
currentpal = 0;
brightoffset = 4;
hittimer = 0;
nonhittimer = 15;
if hasgravity{
	GenerateHitBox(x,y,1,5,-2,7,self,0,true,false);
}

knockspeed = 0;
if extrahitboxh != 0 and extrahitboxw != 0 {
		GenerateHitBox(x,y,extrahitboxw,extrahitboxh,-2,7,self,3,true,true);
	}
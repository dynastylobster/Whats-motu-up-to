if !sliceable then mask_index = S_Empty
if walking {
xspeed = walkspeed
}
onscreen = false;
CheckOnscreen(true,true);
pal = 0;
currentpal = 0;
brightoffset = 4;
hittimer = 0;
nonhittimer = 15;
if hasgravity{
	GenerateHitBox(x,y,1,5,-2,7,self,0,true);
}
knockspeed = 0;
movementFacing = facing;
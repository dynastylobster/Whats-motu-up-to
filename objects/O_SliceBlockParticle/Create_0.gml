// Inherit the parent event
event_inherited();
if instance_exists(O_LevelObject) {
		initialpalette = O_LevelObject.SliceBlockpal
	}
yspeed = random_range(-2,-3.2)
speed = random_range(0.8,1.2);
grav = 0.15;
fliptimer = 8;
/// @description Insert description here
// You can write your code in this editor
event_inherited();
dead = false;
deathtimer = 0;
draw_x = x
hit = false;
brightoffset = 0;
currentpal = initialpalette;
if instance_exists(O_LevelObject) {
		sprite_index = O_LevelObject.SliceBlockSprite
		currentpal = O_LevelObject.SliceBlockpal
	}
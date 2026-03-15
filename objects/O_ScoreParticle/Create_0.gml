/// @description Insert description here
// You can write your code in this editor
depth = 25
pal = choose(0,1,2,3);
_score = 200*global.scoremultiplier
currentpal = choose(1,2,3,4,5,6,7);
initialpalette = currentpal;
speed = 0;
paloffset = 0;
brightoffset = 4;
hittimer = 0;
deathtimer = irandom_range(10,15);
grav = 0.25
yspeed = -5;
global.score += _score
global.scoremultiplier += 1
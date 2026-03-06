// Inherit the parent event
event_inherited();
image_index = 1
alarm[0] = 8
age = 0
startx = x
image_speed = 0
if horizontal {
if O_Player.x < x then xspeed = -2
if O_Player.x >= x then xspeed = 2
}
antiy = y
if !horizontal {
xspeed = 2
antiy = x
}
yspeed = -2
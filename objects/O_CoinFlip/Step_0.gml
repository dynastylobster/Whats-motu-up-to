/// @description Insert description here
// You can write your code in this editor
age += 0.25


if sprite_index = S_coinflip {
	yspeed += grav
	image_yscale = sin(age)
if image_yscale < 0 {image_index = 1}
if image_yscale > 0 {image_index = 0}
}

if y < starty {
		y+= yspeed;
	}

if y > starty {
		if abs(image_yscale) != 1 {
		image_yscale = choose(-1,1)	
		y = starty;
		}
	}
/// @description Insert description here
// You can write your code in this editor
age += 0.125
yoffset = (sin(age*2))


paltimer-=1

if paltimer <= 0 {
	if currentpal >= 8 {
	currentpal = 0;
	
	}
currentpal++
paltimer = 10
}
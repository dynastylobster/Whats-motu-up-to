/// @description Insert description here
// You can write your code in this editor
event_inherited();
surrounded = false;
meetingup = place_meeting(x,y-4,O_DeathBlock)
meetingright = place_meeting(x+4,y,O_DeathBlock)
meetingbottom = place_meeting(x,y+4,O_DeathBlock)
meetingleft = place_meeting(x-4,y,O_DeathBlock)

if (meetingup + meetingbottom + meetingleft + meetingright) = 0 {
		surrounded = true
	}
if !surrounded {
		instance_create_depth(x,y,depth,O_DeathWall);
	}
ageoffset = (x/16)+(y/16)
age = ageoffset
//pal1 = 3
//pal2 = 2
blockrotation = choose(0,90,270,180)
hasblock = choose(1,2,2)
if hasblock !=1 then hasblock = false;
hasskull = choose(1,2,2,2,2)
if hasskull !=1 then hasskull = false;
if hasskull then hasblock = choose(1,2);
CheckOnscreen(true,true);
xoffset = choose(-1,0,1)

skully = irandom_range(0,2)
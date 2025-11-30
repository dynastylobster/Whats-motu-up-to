function BreakSliceBlock(){
currentpal = 3;
initialpalette = currentpal
deathtimer = 9;
hit = true;
image_index = 1;
if !dead {
		audio_stop_sound(Snd_BlockBreak) 
		audio_play_sound(Snd_BlockBreak,0,0,global.sfxvolume,0,random_range(0.9,1.1))	
}
if dead = false {global.stoptimer = 3}
dead = true;
HitAnyone();
}
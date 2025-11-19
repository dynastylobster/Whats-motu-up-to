audio_play_sound(Snd_Slice,0,0,global.sfxvolume,0,1);

mask_index = S_Empty;
motu = noone
if instance_exists(O_Motu) {
	motu = O_Motu;
}

if motu != noone {
		motu.sprite_index = S_MotuSlice;
		motu.image_index = 0;
		motu.image_speed = 1;
	}
done_slicing = false;
pal = 0;
drawpal = 0;
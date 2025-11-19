function HitAnyone(){
	hp -= 1;
	if instance_exists(O_Slice) {
		with O_Slice {
			done_slicing = true;
			drawpal = 3;
			pal = 3;
			mask_index = S_Empty;	
			global.stoptimer = 3;
		}
	}
	if instance_exists(O_Motu) {
		with O_Motu {
			running = true;	
		}
	}
}
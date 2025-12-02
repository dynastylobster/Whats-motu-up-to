function HitPlayer(){
	if instance_exists(O_Motu) and !global.stop {
	if O_Motu.hit = false {
		O_Motu.hittimer = 90;
		O_Motu.yspeed = -3
		O_Motu.hp -= 1;
		O_Motu.hit = true;
	}
	}
}
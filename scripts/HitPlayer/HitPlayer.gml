function HitPlayer(){
	
	if instance_exists(O_Player) and !global.stop {
		with O_Player {
	if hp = 3 {
		instance_create_depth(x,y,depth-1,O_MotuHelm);
	}
	}	
	if O_Player.hit = false {
		O_Player.hittimer = 90;
		O_Player.yspeed = -3
		O_Player.hp -= 1;
		O_Player.hit = true;
		global.stoptimer = 5
	}
	}
}
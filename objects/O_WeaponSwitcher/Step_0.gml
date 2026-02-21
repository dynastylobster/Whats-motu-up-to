if (place_meeting(x, y, O_Player)) {
	if (!iscurrentlyswitching) {
		iscurrentlyswitching = true;
		with (O_AttackParent) {
			switch (global.weapon) {
				case "sword":
				SetWeapon("scythe");
				break;
				case "scythe":
				SetWeapon("sword");
				break;
			
			}
		}
	}
} else {
	iscurrentlyswitching = false;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetWeapon(){
switch global.weapon {
		case "sword":
			image_speed = 1
			attacksprite = S_Slice
			attackspritedown = S_Slice
			damage = 0.75;
			damagedown = 1;
			thrust = 0;
			knockback = 0.25;
			basedamagetimer = 6;
			basedeactivatetimer = 20;
			downslice_yeet = 3;
		break;
		case "bat":
			damage = 0.5;
			damagedown = 0.8;
			thrust = 1;
			knockback = 3;
			basedamagetimer = 8;
			basedeactivatetimer = 25;
			downslice_yeet = 2;
		break;
		case "scythe":
			image_speed = 0.9
			damage = 1.25;
			damagedown = 0.5;
			thrust = 0;
			knockback = 0;
			basedamagetimer = 8;
			basedeactivatetimer = 30;
			downslice_yeet = 2.5;
		break;
		case "gun":
			damage = 1;
			damagedown = 1;
			thrust = 0;
			knockback = 0.5;
			basedamagetimer = 0;
			basedeactivatetimer = 300;
			downslice_yeet = 1;
		break;
	}
	if instance_exists(O_Player) {
	if O_Player.downslicing = false {
	mask_index = attacksprite }
	if O_Player.downslicing = true {
	mask_index = attackspritedown }	
	}
}
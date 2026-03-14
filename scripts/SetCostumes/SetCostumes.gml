// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetCostumes(costumetype = noone, weapontype = noone){
	//if instance_exists(O_Player) {
	if (costumetype != noone) {
		// Fallback use only! Please specify!
		global.character = costumetype;
	}
	if (weapontype != noone) {
		global.weapon = weapontype;
	}
	switch global.character {
		case "Motu":
			
		with O_Player {
		max_walkspeed = 1.5
		max_runspeed = 2.5
		accel = 0.25
		jumpspeed =6
		grav = 0.3
		max_yspeed = 4
		resetidleatxspeed = 0.2
		slicepaloffs = 0;
		behindsprite = S_MotuHair
		palsprite = S_motupal
		idlesprite = S_MotuIdle
		walksprite = S_MotuWalk
		landsprite = S_MotuLand
		jumpsprite = S_MotuJump
		runsprite = S_MotuRun
		slicesprite = S_MotuSlice
		downslicesprite = S_MotuDownSlice
		
		switch global.weapon {
			case "sword":
		weaponidlesprite = S_IdleSword
		weaponwalksprite = S_WalkSword
		weaponlandsprite = S_WalkSword
		weaponjumpsprite = S_JumpSword
		weaponrunsprite = S_RunSword
		weaponslicesprite = S_SliceSword
		weapondownslicesprite = S_DownSliceSword
		break;
			case "scythe":
		weaponidlesprite = S_IdleScythe
		weaponwalksprite = S_WalkScythe
		weaponlandsprite = S_WalkScythe
		weaponjumpsprite = S_JumpScythe
		weaponrunsprite = S_RunScythe
		weaponslicesprite = S_SliceScythe
		weapondownslicesprite = S_Empty			
		}
		
			}
		
		break;
		case "Billy":
		max_walkspeed = 1.8
		max_runspeed = 2.65
		accel = 0.35
		jumpspeed =5.75
		grav = 0.3
		max_yspeed = 5
		behindsprite = S_BillyITail
		idlesprite = S_BillyIdle
		walksprite = S_BillyWalk
		resetidleatxspeed = 0.27
		slicepaloffs = 4
		break;

		case "Banan":
		behindsprite = noone	
		slicepaloffs = 8
		break;
	}
	
	}
//}
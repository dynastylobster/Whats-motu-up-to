// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetCostumes(){
	if instance_exists(O_Player) {
	
	switch global.character {
		case "Motu":
			
		with O_Player {
		slicepaloffset = 0;
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
		with O_Player {
		slicepaloffs = 4
		}
		break;

		case "Banan":
		with O_Player {
		slicepaloffs = 8
		}
		break;
	}
	
	}
}
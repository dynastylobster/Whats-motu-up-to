// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetCostumes(){
	if instance_exists(O_Player) {
	
	switch global.character {
		case "Motu":
			
		with O_Player {
		palsprite = S_motupal
		idlesprite = S_MotuIdle
		walksprite = S_MotuWalk
		landsprite = S_MotuLand
		jumpsprite = S_MotuJump
		runsprite = S_MotuRun
		slicesprite = S_MotuSlice
		downslicesprite = S_MotuDownSlice
			}
		
		break;
		case "Billy":
		
		break;

		case "Banan":
		
		break;
	}
	
	}
}
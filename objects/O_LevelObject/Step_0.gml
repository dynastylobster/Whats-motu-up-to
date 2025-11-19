/// @description Insert description here
// You can write your code in this editor



switch CameraMode {
		case "Center": {
				cam_x = clamp( ObjectFollowing.x - CAM_W/2 , 0 , room_width-CAM_W)
				cam_y = clamp( ObjectFollowing.y - CAM_H/2 , 0 , room_height-CAM_H)
			}
		break;
		case "Motu": {
		if instance_exists(O_Motu) {
		 facing = O_Motu.facing;
			
		 cam_l = clamp(cam_x + (CAM_W/2) -32,0,room_width-CAM_W)
		 cam_r = clamp(cam_x + (CAM_W/2) +32,0,room_width-CAM_W)
		
		if O_Motu.x < cam_r {
				if abs(O_Motu.xspeed) > 0 {
				cam_x -= abs(O_Motu.xspeed)
				}
			}
		if O_Motu.x > cam_l {
				if abs(O_Motu.xspeed) > 0 {
				cam_x += abs(O_Motu.xspeed)
				}
			}
		

	}
		break;
		}
		
	}
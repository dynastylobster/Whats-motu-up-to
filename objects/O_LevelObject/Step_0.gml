/// @description Camera Logic

switch CameraMode {
    case "Center": {
        cam_x = clamp(ObjectFollowing.x - CAM_W/2, 0, room_width - CAM_W);
        cam_y = clamp(ObjectFollowing.y - CAM_H/2, 0, room_height - CAM_H);
    }
    break;

    case "Motu": {
    if (instance_exists(O_Player)) {
        
        // Walls when standing still
        var _base_L = (CAM_W / 2) - 32;
        var _base_R = (CAM_W / 2) + 32;
        
        // How much the walls shift when runninG
        var _shift_amount = 80;
        
        // Smoothness. Lower = heavier camera.
        var _cam_smoothness = 0.02;


        // use variable 'box_shift' 
        // to track where the walls SHOULD be.
        
        var _target_shift = 0;
        
        // Only change the target if the player is moving.
        if (O_Player.xspeed > 0.1) {
            // Moving Right? Shift walls Left (negative) so we see more Right.
            _target_shift = -_shift_amount;
        } 
        else if (O_Player.xspeed < -0.1) {
            // Moving Left? Shift walls Right (positive) so we see more Left.
            _target_shift = _shift_amount;
        }
        else {
            _target_shift = box_shift;
        }

        // Smoothly move the walls to the new target
        box_shift = lerp(box_shift, _target_shift, _cam_smoothness);
		


        // Apply the shift to our base walls
        // Use 'cam_x' to position these relative to the world
        cam_l = cam_x + _base_L + box_shift;
        cam_r = cam_x + _base_R + box_shift;


        // If player is outside the right wall, drag camera right
        if (O_Player.x > cam_r) {
            cam_x += (O_Player.x - cam_r);
        }
        
        // If player is outside the left wall, drag camera left
        if (O_Player.x < cam_l) {
            cam_x -= (cam_l - O_Player.x);
        }


        // Vertical is nothing special for now
        var _cam_top = cam_y + (CAM_H / 2) - 48;
        var _cam_bot = cam_y + (CAM_H / 2) + 48;
        
        if (O_Player.y > _cam_bot) cam_y += (O_Player.y - _cam_bot);
        if (O_Player.y < _cam_top) cam_y -= (_cam_top - O_Player.y);

        // Room Clamping
        cam_x = clamp(cam_x, 0, room_width - CAM_W);
        cam_y = clamp(cam_y, 0, room_height - CAM_H);
    }
    break;
}
}
// Idk, needed that weird bracket lol

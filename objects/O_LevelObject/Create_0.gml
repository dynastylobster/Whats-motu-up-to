/// @description Insert description here
// You can write your code in this editor
#macro CAM_X camera_get_view_x(view_camera[0])
#macro CAM_Y camera_get_view_y(view_camera[0])

#macro CAMOBJECT_X O_LevelObject.cam_x
#macro CAMOBJECT_Y O_LevelObject.cam_y

#macro CAM_W camera_get_view_width(view_camera[0])
#macro CAM_H camera_get_view_height(view_camera[0])

#macro GETLAYER layer_get_id

facing = 1;
 cam_l = clamp(cam_x + (CAM_W/2) -32,0,room_width-CAM_W) 
 cam_r = clamp(cam_x + (CAM_W/2) +32,0,room_width-CAM_W) 
 cam_max = 64
 cam_min = -64
/// @description Set up Camera
camera = view_camera[0];
obj_to_follow = obj_player;
view_width_half = camera_get_view_width(camera) * 0.5;
view_height_half = camera_get_view_height(camera) * 0.5;
xTo = xstart;
yTo = ystart;

cam_fidelity = 20;
buff = 32;
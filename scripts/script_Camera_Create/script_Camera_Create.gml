///===Camera Creation===///
script_execute(script_Global_Variables);

camera = camera_create();

var view_mat = matrix_build_lookat(x,y,-room_height,x,y,0,0,1,0);
var proj_mat = matrix_build_projection_ortho(2560,1940, 1.0, 32000.0);

camera_set_view_mat(camera, view_mat);
camera_set_proj_mat(camera, proj_mat);

view_camera[0] = camera;

follow = obj_Player;

xTo = x;
yTo = y;

current_x_zoom = default_x_zoom;
current_y_zoom = default_y_zoom;
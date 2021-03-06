///===Camera Step===///

//--Camera Movement--//

//TODO: Fix border issue where camera goes out of room area some
if (follow != noone)
{
	x = clamp((x + (xTo - x)/32), 0, room_width);
	xTo = follow.x;
	
	y = clamp((y + (yTo - y)/32), 0, room_height);
	yTo = follow.y;
}

var view_mat = matrix_build_lookat(x,y,-room_height, x,y,0,0,1,0);
camera_set_view_mat(camera, view_mat);


//--Camera Zoom--//
//--Increase Camera Distance
if(keyboard_check_pressed(vk_f2))
{
	current_x_zoom += (default_x_zoom * 0.1);
	current_y_zoom += (default_y_zoom * 0.1);
	var proj_mat = matrix_build_projection_ortho(current_x_zoom, current_y_zoom, 1.0, 32000.0);
	camera_set_proj_mat(camera, proj_mat);
}
//--Decrease Camera Distance
if(keyboard_check_pressed(vk_f1))
{
	current_x_zoom -= (default_x_zoom * 0.1);
	current_y_zoom -= (default_y_zoom * 0.1);
	var proj_mat = matrix_build_projection_ortho(current_x_zoom, current_y_zoom, 1.0, 32000.0);
	camera_set_proj_mat(camera, proj_mat);
}

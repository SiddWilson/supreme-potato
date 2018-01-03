/// @description Insert description here
// You can write your code in this editor


script_execute(script_Player_Actions);
script_execute(script_Depth_Adjustment);
///===OLD CODE===///
//key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
//key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
//key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
//key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);

//var h_move = key_right - key_left;
//var v_move = key_down - key_up;

//hsp = h_move * walksp;
//vsp = v_move * walksp;

////Horizontal Movement
////horizontal collision with wall object
//if(place_meeting(x+hsp, y, obj_Wall))
//{
//	while(!place_meeting(x+sign(hsp),y,obj_wall))
//	{
//		x += sign(hsp);
//	}
//	hsp = 0;
//}

//x += hsp;

////Vertical Movement
////vertical collision with wall object
//if(place_meeting(x, y+vsp, obj_Wall))
//{
//	while(!place_meeting(x,y+sign(vsp),obj_wall))
//	{
//		y += sign(vsp);
//	}
//	vsp = 0;
//}

//y = y + vsp;
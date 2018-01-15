///===Player Actions===///

//--Keyboard Input--//
input_right = keyboard_check(ord("D"));
input_left = keyboard_check(ord("A"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));

//--Debug Mode--//
if(debug){
	if(keyboard_check(vk_backspace)){room_restart();}
}

//--Player Movement--//
if (input_right && place_free(x+global.playerMovementSpeed,y)){
		x += global.playerMovementSpeed;
}
if (input_left && place_free(x-global.playerMovementSpeed,y)){
		x -= global.playerMovementSpeed;
}
if (input_up && place_free(x,y-global.playerMovementSpeed)){
		y -= global.playerMovementSpeed;
}
if (input_down && place_free(x,y+global.playerMovementSpeed)){
		y += global.playerMovementSpeed;
}


//--Item Pickup --//

//TODO: add item dropping
//nearest_Item = instance_nearest(x,y);
//if (keyboard_check_released(vk_space) && distance_to_object(nearest_Item) <= pickUpRange){
//	script_execute(script_Inventory_Add_Drop(nearest_item, inventory_Instance_ID.inventory_list));
//	//TODO: double check to make sure inventory_list is correct. might need to reference inventory object
//	//and then access inventory_list
//}


//nearestStone = instance_nearest(x,y,obj_Item_Stone);
//if (keyboard_check_released(vk_space) && distance_to_object(nearestStone) <= pickUpRange){
//	//destroying instance of stone object
//	with(nearestStone){
//		instance_destroy();
//	}
//	//Adding stone to player inventory
//	inventory_Stone++;
//}

//nearestWood = instance_nearest(x,y,obj_Item_Log);
//if (keyboard_check_released(vk_space) && distance_to_object(nearestWood) <= pickUpRange){
//	//destroying instance of log object
//	with(nearestWood){
//		instance_destroy();
//	}
//	//Adding stone to player inventory
//	inventory_Wood++;
//}


//--Harvest Mechanics--//

//--Tree Harvest
nearestTree = instance_nearest(x,y,obj_World_Tree);
if(keyboard_check_released(vk_space) && (distance_to_object(nearestTree) < harvestRange)){	
	//inventory_Wood += floor(random(yield_Trees))+1;
	with(nearestTree){
		amount_Logs = floor(random(yield_Trees))+1;
		for(i=0; i < amount_Logs; i++){
			instance_create_layer(x+(i*16), y, "world_Objects", obj_Item_Log);
		}
		instance_destroy();
	}
}

//--Rock Harvest
nearestRock = instance_nearest(x,y,obj_World_Rock);
if(keyboard_check_released(vk_space) && (distance_to_object(nearestRock) < harvestRange)){
	//inventory_Stone += floor(random(yield_Rocks))+1;
	with(nearestRock){
		amount_Stone = floor(random(yield_Rocks))+1;
		for(i=0; i < amount_Stone; i++){
			instance_create_layer(x+(i*16), y, "world_Objects", obj_Item_Stone)
		}
		instance_destroy();
	}
}


///===World Generation===///

//NOTE: position_empty function does not fix object generation collision issues,
// place_free is the correct function to call.
for(i=0; i < amount_Trees; i++){
	var xPos = random(room_width);
	var yPos = random(room_height);
	if(place_free(xPos,yPos)){instance_create_layer(xPos, yPos, "world_Objects", obj_World_Tree); }	
}
for(i=0; i < amount_Rocks; i++){
	var xPos = random(room_width);
	var yPos = random(room_height);
	if(place_free(xPos,yPos)){instance_create_layer(xPos, yPos, "world_Objects", obj_World_Rock); }
}
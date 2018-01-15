/// @description Calls player creation scripts
// You can write your code in this editor

script_execute(script_Global_Variables);


//call inventory_create to create new inventory object instance for character
script_execute(script_Inventory_Create);


//--Draw Hotkey Bar GUI--//
//draw_sprite(spr_Inventory_Slot,0,0,0);
//draw_sprite(spr_Inventory_Slot,0,64,0);
//draw_sprite(spr_Inventory_Slot,0,128,0);
//draw_sprite(spr_Inventory_Slot,0,192,0);
//draw_sprite(spr_Inventory_Slot,0,256,0);
//draw_sprite(spr_Inventory_Slot,0,320,0);
//draw_sprite(spr_Inventory_Slot,0,384,0);


//list positions 0-6 are reserved for hotbar
///===Inventory GUI===///


//--Hotkey Bar--//

//--Draw Hotkey Bar
//done in obj_Player create event

//--Add Item To Bar
instance_create_layer(0,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 0))
instance_create_layer(64,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 1))
instance_create_layer(128,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 2))
instance_create_layer(192,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 3))
instance_create_layer(256,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 4))
instance_create_layer(320,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 5))
instance_create_layer(384,0,"inventory_Objects", ds_list_find_value(inventory_Instance_ID.inventory_list, 6))

//--Inventory Screen--//
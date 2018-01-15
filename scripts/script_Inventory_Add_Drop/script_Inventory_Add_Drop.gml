///@function add_remove_item(object)
///@description Add or remove item from inventory
///@param {object} Item to be added or removed from inventory
///@param {ds_list} Inventory that is being accessed

//must transfer item attributes
//check if in inventory
//destroy prior instance and generate new instance in appropriate location 

var item = argument0;
var inventory = argument1;

//Check if object is an item

if(object_is_ancestor(item, obj_Item))
{
	var item_index = ds_list_find_index(inventory, item);
	//item pickup
	if(!item.item_in_Inventory)
	{
		
		if(item_index == -1)
		{
			//if(){
				//TODO: Add to hotkey bar if hotkey bar is empty
	//		}
			ds_list_add(inventory, item);
		}
		else
		{
			inventory[item_index] += item.item_Amount;
		}
		with(item)
		{
			instance_destroy();	
		}
		
	}
	//for dropping item
	//else if(item.item_in_Inventory)
	//{	
	//	instance_create_layer()
	//}
	
}

//should id items based off of type they are - can speed up search by using item type
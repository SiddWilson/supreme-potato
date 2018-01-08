///===GLOBAL VARIABLES===///

//--Game Variables--//
debug = true;

//--Seed Generation
randomize();

//--Room Variables--//
room_width = 3940;
room_height = 2160;
room_speed = 60;
global.tileSize = 32;

//--Camera Variables--//
default_x_zoom = 2560;
default_y_zoom = 1940;

//--Player Variables--//
global.playerMovementSpeed = 2;
harvestRange = 5;
pickUpRange = 1;
image_index = 0;
image_speed = 0;
inventory_Wood = 0;
inventory_Stone = 0;


//--World Variables--//
amount_Trees = 128;
yield_Trees = 4;

amount_Rocks = 32;
yield_Rocks = 5;

//--World Generation--//
//TODO: fix to where function is only called once on world creation
 //script_execute(script_World_Generation);

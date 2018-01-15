///===Player Inventory===///

//--Graphics--//

//--Background
inventory_Width = 96;
inventory_Height = 50;
draw_set_color(c_white);
draw_rectangle(0, 0, inventory_Width, inventory_Height, false);
draw_set_color(c_black);
draw_rectangle(0,0, inventory_Width, inventory_Height, true);

//--Text
lineHeight = 15;
draw_set_color(c_black);
draw_text(2,0*lineHeight, "Wood: " + string(inventory_Wood));
draw_text(2,1*lineHeight, "Stone: " + string(inventory_Stone));
/// @description Insert description here
// You can write your code in this editor
characterID = -1;
finished = false;
buttons = [];
buttonCount = 0;
selected = -1;
creator = noone;
type = -1;

var xx = 32
var yy = 64
var row = 0;
for(var i = 1; i < ds_grid_height(global.weapons); i++){
	var xi = 96*((i-1)%4);
	var inst = instance_create_depth(x + (xx + xi),y + (yy+ row * 96), -9999, oWeapon);
	inst.WID = i;
	inst.image_index = i-1;
	buttons[i-1] = inst;
	buttonCount ++;
    if(i%4 = 0){
		row++;
	}
}

var button = instance_create_depth(x+280, y+256, -9999, oSmButton);
button.idPointer = id;
button.image_yscale = .75
button.image_xscale = .75
button.type = "Inventory Accept";
button.enabled = true;
buttons[buttonCount] = button;
buttonCount ++;

//TODO - when armor and other items are implemented
//Create a list in this object and then have each selected item be added to that list
//show that list off to the side
//rightlcicking an item will remove it from the list
//maybe its a map for ease of finding things
//push the list from this object to the game object.
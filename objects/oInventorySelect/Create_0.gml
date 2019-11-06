/// @description Insert description here
// You can write your code in this editor
characterID = -1;
finished = false;
buttons = [];
buttonCount = 0;
currentWeapon = -1;

var xx = 32
var yy = 64
var row = 0;
for(var i = 1; i < ds_grid_height(global.weapons); i++){
	var xi = 96*((i-1)%4);
	var yi = 96*(i-1);
	var inst = instance_create_depth(x + (xx + xi),y + (yy+ row * 96), -9000, oWeapon);
	inst.WID = i;
	inst.image_index = i-1;
	buttons[i-1] = inst;
	buttonCount ++;
    if(i%4 = 0){
		row++;
	}
}

var button = instance_create_depth(x+320, y+256, -9000, oAccept);
button.idPointer = id;
buttons[buttonCount] = button;
buttonCount ++;

//TODO - when armor and other items are implemented
//Create a list in this object and then have each selected item be added to that list
//show that list off to the side
//rightlcicking an item will remove it from the list
//maybe its a map for ease of finding things
//push the list from this object to the game object.
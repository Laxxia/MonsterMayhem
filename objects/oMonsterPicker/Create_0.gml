/// @description Insert description here
// You can write your code in this editor
squareID = noone;
finished = false;
buttons = [];
buttonCount = 0;
currentMonster = -1;


var xx = 32
var yy = 128
for(var i = 0; i < array_length_1d(oGameController.monsters); i++){
	var xi = 96*(i);
	var inst = instance_create_depth(x + (xx + xi),y + yy, -9000, oMonsterFace);
	inst.MID = i;
	inst.image_index = i;
	buttons[i] = inst;
	buttonCount ++;
}

var button = instance_create_depth(x+320, y+256, -9000, oAccept);
button.idPointer = id;
buttons[buttonCount] = button;
buttonCount ++;
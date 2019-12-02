/// @description Insert description here
// You can write your code in this editor
monsterID = global.curPlayer.attackTarget;
buttonCount = 0;
buttons = [];
active = true;
for(var i = 0; i < monsterID.hitLocations; i++){
	var inst = instance_create_depth(x + 30, y + (20 + (i*70)), -9999, oHitLocation);
	inst.image_index = i;
	inst.location = i; //use this spot right here to grab the specific hit location
	buttonCount ++;
	buttons[i] = inst;
	inst.creator = id;
}

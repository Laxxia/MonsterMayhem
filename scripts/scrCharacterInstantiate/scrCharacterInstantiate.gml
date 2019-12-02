var inst = noone;
for(var i = 0; i<4; i++){
	xx = x + (32)
	yy = y + (32 + (96*(i)))
	switch(i){
		case 0:
		inst = instance_create_layer(xx, yy, "Instances", oSurvivorOne);
		break;
		case 1:
		inst = instance_create_layer(xx, yy, "Instances", oSurvivorTwo);
		break;
		case 2:
		inst = instance_create_layer(xx, yy, "Instances", oSurvivorThree);
		break;
		case 3:
		inst = instance_create_layer(xx, yy, "Instances", oSurvivorFour);
		break;
	}
	inst.currentWeapon = global.characterInventory[# i, charStats.weaponID];
}
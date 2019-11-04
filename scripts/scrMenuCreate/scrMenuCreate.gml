//Place monster object
var monsterInstance = instance_create_layer(928, 256, "Instances", oMonsterSelect);

//Place characters
var xx = 640
var yy = 416
for(var i = 0; i < 4; i++){
	var xi = 192*(i);
	var inst = instance_create_layer(xx + xi, yy, "Instances", oCharacterSelect);
	inst.image_index = i;
	inst.charID = i;
}
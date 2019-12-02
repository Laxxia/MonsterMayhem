/// @description Insert description here
// You can write your code in this editor
if(submit){
	for(var j = 0; j < array_length_1d(playerInfo); j++){
		global.characterInventory[# player, j] = playerInfo[j]
	}
	for(var i = 0; i < buttonCount; i++){
		instance_destroy(buttons[i]);
	}
	instance_destroy();
}
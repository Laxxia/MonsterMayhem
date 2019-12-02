/// @description Insert description here
// You can write your code in this editor
if(finished){
	creator.playerInfo[1] = selected;
	for(var i = 0; i < buttonCount; i++){
		instance_destroy(buttons[i]);
	}
	instance_destroy();
}
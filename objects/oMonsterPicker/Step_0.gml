/// @description Insert description here
// You can write your code in this editor
if(finished){
	oGameController.selectedMonster = currentMonster;
	squareID.image_index = currentMonster;
	for(var i = 0; i < buttonCount; i++){
		instance_destroy(buttons[i]);
	}
	instance_destroy();
}
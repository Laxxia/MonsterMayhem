if(oGameController.remainingSurvivors <= 0 && room == combatArena){
	oGameController.curState = state.overlay;
	var inst = instance_create_layer(x, y, "UIBase", oPopUp);
	inst.image_xscale = 2;
	inst.image_yscale = 2;
	inst.x = room_width/2 - (inst.sprite_width/2)
	inst.y = room_height/2 - (inst.sprite_height /2)
	inst.type = "Loss";
} else if(room == combatArena) {
	global.tempState = oGameController.curState;
	oGameController.curState = state.overlay;
	var inst = instance_create_layer(x, y, "UIBase", oPopUp);
	inst.image_xscale = 2;
	inst.image_yscale = 2;
	inst.x = room_width/2 - (inst.sprite_width/2)
	inst.y = room_height/2 - (inst.sprite_height /2)
	inst.type = "Death";
}
/// @description Insert description here
// You can write your code in this editor
switch(type){
	case "Win":
		text[0] = "You've defeated the beast!";
		var inst = instance_create_layer(x, y, "UIInteracts", oButton);
		//inst.image_xscale = 2;
		//inst.image_yscale = 2;
		inst.x = x + (sprite_width/2 - inst.sprite_width/2);
		inst.y = y + (sprite_height/2)
		inst.type = "Restart";
		type = "Complete";
	break;
	case "monster attack":
		var target = creator.attackTarget;
		text[0] = string(target) + " is being Attacked!";
		text[1] = "The monster uses " + string(creator.aiPool[# monsterAI.attackName, eventID]);
		//To DO - set it so you can choose to act at this time.
		//Debug note, also create a click on the monster, be able to see their entire action deck at any moment.
		var inst = instance_create_layer(x, y, "UIInteracts", oButton);
		//inst.image_xscale = 2;
		//inst.image_yscale = 2;
		inst.x = x + (sprite_width/2 - inst.sprite_width/2);
		inst.y = y + (sprite_height/2)
		inst.type = "Attacked";		
		inst.creator = creator;
		buttons[0] = inst;
		buttonCount ++;
		type = "Complete";
	break;
	case "Complete":
	break;
}

if(global.curState != state.overlay){
	for(var i = 0; i < buttonCount; i++){
		instance_destroy(buttons[i]);
	}
	instance_destroy();
}
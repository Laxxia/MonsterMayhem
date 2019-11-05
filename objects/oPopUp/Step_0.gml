/// @description Insert description here
// You can write your code in this editor
switch(type){
	case "Win":
		text = "You've defeated the beast!";
		var inst = instance_create_depth(x + (sprite_width/2), y + (sprite_height/2), -9999, oButton);
		inst.type = "Restart";
	break;
}
/// @description Insert description here
// You can write your code in this editor
switch(type){
	case "Win":
		text = "You've defeated the beast!";
		var inst = instance_create_layer(x, y, "UIInteracts", oButton);
		//inst.image_xscale = 2;
		//inst.image_yscale = 2;
		inst.x = x + (sprite_width/2 - inst.sprite_width/2);
		inst.y = y + (sprite_height/2)
		inst.type = "Restart";
	break;
}
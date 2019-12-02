/// @description Insert description here
// You can write your code in this editor
switch(type){
	case "Move Player":
		if (!targetPlayer.playerMove){
			enabled = false;
		}
		text = "Move";
	break;
	case "Player Attack":
		if (!targetPlayer.playerAttack){
			enabled = false;
		}
		text = "Attack";
	break;
	case "End Turn":
		text = "End Turn";
	break;
	case "Start Combat":
		enabled = true;
		text = "Start Fight";
	break;
	case "Inventory Accept":
		text = "Accept";
	break;
	case "Character Create":
		text = "Submit";
	break;
}

if(!enabled){
	image_alpha = .5;
} else {image_alpha = 1;}
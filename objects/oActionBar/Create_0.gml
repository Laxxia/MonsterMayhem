/// @description Insert description here
// You can write your code in this editor
buttonCount = 0;
buttons = [];
attackChecked = false;

//TODO - Make this a bit more automated, and dynamic, so if you already moved, the move either is faded out
//but stil there, or alternatively, the previous button fills the spot, though I think maintaining positions would
//be good for uhh, player consistency.
targetPlayer = global.curPlayer;
	buttons[buttonCount] = instance_create_depth(x + (sprite_width * 2/3.5), y + 16, -y, oSmButton);
	if(targetPlayer.playerMove){buttons[buttonCount].enabled = true;}
	buttons[buttonCount].targetPlayer = targetPlayer;
	buttons[buttonCount].type = "Move Player";
	buttonCount ++;

	buttons[buttonCount] = instance_create_depth(x+(sprite_width * 2/3.5), y + y/2 + (buttons[buttonCount-1].sprite_height * buttonCount + 15), -y, oSmButton);
	buttons[buttonCount].targetPlayer = targetPlayer;
	buttons[buttonCount].targetMonster = scrCombatCheck();
	if(buttons[buttonCount].targetMonster != noone){buttons[buttonCount].enabled = true;}
	if(!targetPlayer.playerAttack){buttons[buttonCount].enabled = false;}
	buttons[buttonCount].type = "Player Attack";
	buttonCount ++;
buttons[buttonCount] = instance_create_depth(x+(sprite_width * 2/3.5), y + 325, -y, oSmButton);
buttons[buttonCount].type = "End Turn";
buttons[buttonCount].enabled = true;
buttonCount ++;

//Create a skip rest of actions button.

//Down here will be for the rest of the checks, not sure how they will be done yet
//possibly add the equipment soon to do somehting like throw founding stone
//Just to have the system figured out for future ACTIONable events
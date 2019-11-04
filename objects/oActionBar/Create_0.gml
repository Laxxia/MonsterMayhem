/// @description Insert description here
// You can write your code in this editor
buttonCount = 0;
buttons = [];

//TODO - Make this a bit more automated, and dynamic, so if you already moved, the move either is faded out
//but stil there, or alternatively, the previous button fills the spot, though I think maintaining positions would
//be good for uhh, player consistency.
targetPlayer = global.curPlayer;
if(targetPlayer.playerMove){
	buttons[buttonCount] = instance_create_depth(x+32, y + 16, -y, oMoveButton);
	buttons[buttonCount].targetPlayer = targetPlayer;
	buttonCount ++;
}

if(targetPlayer.playerAttack){
	buttons[buttonCount] = instance_create_depth(x+(64 + (96 *buttonCount)), y + 16, -y, oAttackButton);
	buttons[buttonCount].targetPlayer = targetPlayer;
	buttonCount ++;
}
buttons[buttonCount] = instance_create_depth(x+(64 + (96 *buttonCount)), y + 16, -y, oEndTurn);
buttonCount ++;

//Create a skip rest of actions button.

//Down here will be for the rest of the checks, not sure how they will be done yet
//possibly add the equipment soon to do somehting like throw founding stone
//Just to have the system figured out for future ACTIONable events
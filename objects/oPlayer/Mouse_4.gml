/// @description Insert description here
// You can write your code in this editor

if(oGameController.curState = state.playerTurn && (playerMove || playerAttackPoint) && oGameController.curPlayer = noone){
	oGameController.curPlayer = id;
	scrActionMenu();
}

if(oGameController.curState = state.freeMovement && !oCursor.holding){
	grabbed = true;
	oCursor.holding = true;
}
if(grabbed && oGameController.curState = state.freeMovement){
	scrFreePlace();
}
/// @description Insert description here
// You can write your code in this editor

if(global.curState = state.playerTurn && (playerMove || playerAttack) && global.curPlayer = noone){
	global.curPlayer = id;
	scrActionMenu();
}

if(global.curState = state.freeMovement && !global.holding){
	grabbed = true;
	global.holding = true;
}
if(grabbed && global.curState = state.freeMovement){
	scrFreePlace();
}
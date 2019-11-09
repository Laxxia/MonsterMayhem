/// @description Insert description here
// You can write your code in this editor
///clear path
path_clear_points(movementPath);
playerMove = false;
if(playerAttack){
	global.curState = state.playerTurn;
	global.curPlayer = id;
	scrActionMenu();
} else {
	global.curState = state.playerTurn;
	playerState = "ending turn";
	global.curPlayer = noone;
}

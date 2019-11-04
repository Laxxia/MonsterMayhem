/// @description Insert description here
// You can write your code in this editor
///clear path
path_clear_points(movementPath);
playerState = "idle";

if(playerAttack){
	global.curState = state.playerTurn;
	global.curPlayer = id;
	scrActionMenu();
}

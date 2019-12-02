/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
path_clear_points(movementPath);
playerMove = false;
if(playerAttack){
	monsterState = "find target";
} else {
	monsterState = "idle";
}

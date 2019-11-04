/// @description Insert description here
// You can write your code in this editor
var inst = targetPlayer;
var currentTile = inst.currentTile;
var move = inst.move;

if(enabled){
	scrMovementRange(currentTile, move);
	global.curState = state.moving;
}

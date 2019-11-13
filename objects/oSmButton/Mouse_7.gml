/// @description Insert description here
// You can write your code in this editor
image_index = 0;

switch(type){
	case "Move Player":
		var inst = targetPlayer;
		var currentTile = inst.currentTile;
		var move = inst.move;
		if(enabled){
			scrMovementRange(currentTile, move);
			global.curState = state.moving;
		}
	break;
	case "Player Attack":
		if(enabled){
			targetPlayer.attackTimer = 10;
			targetPlayer.playerState = "begin attack";
			targetPlayer.attackTarget = targetMonster;
			//TODO - The way attacking works auto targets for you, perhaps this should be changed in the future
		}
	break;
	case "End Turn":
		var inst = global.curPlayer
		inst.playerMove = false;
		inst.playerAttack = false;
		inst.playerState = "ending turn";
		global.curPlayer = noone;
		global.curState = state.playerTurn;
		scrClearNodes();
	break;
	case "Start Combat":
		if(global.unplacedSurvivors == 0){	
			global.curState = state.monsterTurn;
			instance_destroy();
		}
	break;
}
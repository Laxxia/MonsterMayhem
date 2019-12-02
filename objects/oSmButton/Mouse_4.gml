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
			targetPlayer.attackTarget = targetMonster;
			targetPlayer.playerState = "hit choice";
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
	case "Inventory Accept":
		global.curState = state.idle;
		idPointer.finished = true;
	break;
	case "Character Create":
		global.curState = state.idle;
		idPointer.submit = true;
	break;
}
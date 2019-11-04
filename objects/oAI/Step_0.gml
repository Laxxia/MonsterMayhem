/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(global.curState = state.monsterTurn){
	switch(monsterState){
	case "turn start":
		playerAttack = true;
		playerMove = true;
		monsterState = "find target";
		//This is possibly a start of turn script that needs to exist
	break;
	
	case "begin attack":
		image_angle = 90;
		monsterState = "idle";
	break;
	case"find target":
		scrFindTarget();
	break;
	case "find move node":
		scrFindMoveNode();
	break;
	
	case "begin path":
		path_start(movementPath, move, 0, true);
		monsterState = "moving";
	break;
	case "idle":     
		global.curPlayer = noone;
		global.curState = state.playerTurn;
		monsterState = "turn start";
	break;
	}
}
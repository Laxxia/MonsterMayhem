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
		var cardID = scrDrawAI(aiDeck, aiDiscard);
		scrAttackPopup(cardID);
	break;
	case "attack":
		var attackCheck = scrAICardAction(attackTarget);
		scrMonsterAttack(attackCheck);
	break;
	case "end attack":
		attackTimer -= 1;
		if(attackTimer <= 0){
			monsterState = "idle";
		}
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
		global.curState = state.playerStartTurn;
		monsterState = "turn start";
	break;
	}
}

if(healthPoints <= 0){
	global.curState = state.win;
	instance_destroy();
}
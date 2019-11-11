/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(global.curState = state.monsterTurn){
	switch(monsterState){
	case "turn start":
		playerAttack = true;
		playerMove = true;
		monsterState = "draw card";
		//This is possibly a start of turn script that needs to exist
	break;
	case "draw card":
		currentAttack = scrDrawAI(aiDeck, aiDiscard);
		// a place to act for players possibly
		monsterState = "card action";
	break;
	case "card action":
		switch(aiPool[# monsterAI.type, currentAttack]){
			case "Attack":
			monsterState = "find target";
			break;
			case "Mood":
				monsterState = "idle"; // add moods later
			break;
			case "Status":
			monsterState = "find target";
			break;
		}
	break;
	case "begin attack":
		scrAttackPopup(currentAttack);
	break;
	case "attack":
		scrAICardAction(currentAttack, attackTarget);
		currentAttack = -1;
	break;
	case "end attack":
		attackTimer -= 1;
		if(attackTimer <= 0){
			monsterState = "idle";
		}
	break;
	case"find target":
		scrFindTarget(currentAttack); // closest target
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
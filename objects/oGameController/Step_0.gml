/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("D"))){
	global.debug = !global.debug;;
}

switch(global.curState){
	case state.combatStart:
	scrPlaceSurvivors();
	global.curState = state.freeMovement;
	break;
	case state.freeMovement:
	//This occurs at the start of the game, to be able to place the characters onto the board.
	break;
	case state.monsterTurn:
	break;
	case state.playerTurn:
	//probably have hovering abilities to see some stats of the players and such, 
	//UI to pull up inventgories etc. and view current chooseable actions
	//Possibly choose move from actionable actions? 
	break;
	case state.attacking:
		global.curState = state.playerTurn; //Fix this later
	break;
}
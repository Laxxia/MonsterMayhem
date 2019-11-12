/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
// Inherit the parent event
gridX = 0;
gridY = 0;
aiPool = noone;
move = 6;
healthPoints = 0;
monsterState = "turn start"
objectType = combatType.monster;
monsterID = -1;
aiDeck = ds_stack_create();
aiDiscard = ds_stack_create();
currentAttack = -1;
triggerScripts = [];

//Actionable actions tracker
playerMove = true; //Tracks if they've used their movement point
playerAttack = true; //Tracks if they've used their action point 
currentTile = noone;
endTurn = false;
//Pathing Variables ------------

movementPath = path_add();
path_set_kind(movementPath, 2);
path_set_closed(movementPath, false); //true is a closed loop
pathSpeed = 8;

//Combat Variables -------------------------
status = "Normal";
attackTarget = noone;
attackTimer = 0; 
shake = 0;
shakeMag = 0;

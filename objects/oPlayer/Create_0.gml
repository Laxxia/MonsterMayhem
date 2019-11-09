/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

gridX = 0;
gridY = 0;
playerState = "idle";

//Actionable actions tracker
playerMove = true; //Tracks if they've used their movement point
playerAttack = true; //Tracks if they've used their action point 

objectType = combatType.friendly;
currentTile = noone;
grabbed = false;
beenPlaced = false;
endTurn = false;
//Pathing Variables ------------

movementPath = path_add();
path_set_kind(movementPath, 2);
path_set_closed(movementPath, false); //true is a closed loop
pathSpeed = 8;

//Combat Variables -------------------------
currentWeapon = -1;
move = 5; //Max square move distance
evasion = 0;
healthPoints = 0;
attackTarget = noone;
attackTimer = 0; 
shake = 0;
shakeMag = 0;

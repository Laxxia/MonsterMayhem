/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
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

pressed = false;
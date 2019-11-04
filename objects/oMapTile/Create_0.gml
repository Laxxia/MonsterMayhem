/// @description Insert description here
// You can write your code in this editor
neighbors = ds_list_create()
image_speed = 0;
gridX = 0;
gridY = 0; 
containing = noone;
passable = true;


//Pathfinding Variables

cost = 1;
parent = noone;
distanceScore = 0;
moveNode = false;
attackNode = false;
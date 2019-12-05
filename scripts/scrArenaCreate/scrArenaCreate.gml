//Map Creation//
mapWidth = 22;
mapHeight = 16;


global.grid = ds_grid_create(mapWidth ,mapHeight);


for(var i = 0; i < mapWidth; i++){
	for(var j = 0; j < mapHeight; j++){
		var xx = global.xStart + (global.cellSize*i);
		var yy = global.yStart + (global.cellSize*j);
		var inst = instance_create_layer(xx, yy, "Map", oMapTile);
		global.grid[# i,j] = inst;
		with (inst){
			gridX = i;
			gridY = j;
		}
	}
}

//Neighbor grabbing
for(var i = 0; i < mapWidth; i++){
	for(var j = 0; j < mapHeight; j++){
		node = global.grid[# i,j];
		//Grabbing Left Neighbor
		if(i > 0){
			ds_list_add(node.neighbors, global.grid[# i-1, j]);
		}
		//Grab Right neighbor
		if(i < mapWidth - 1){
			ds_list_add(node.neighbors, global.grid[# i+1, j]);
		}
		//Grab Up Neighbor
		if(j > 0){
			ds_list_add(node.neighbors, global.grid[# i, j-1]);
		}
		//Add down neighbor
		if(j < mapHeight - 1){
			ds_list_add(node.neighbors, global.grid[# i, j+1]);
		}
	}
}
var tile = global.grid[# 8,11]
var inst = instance_create_layer(tile.x, tile.y, "Instances", oMonster);
tile.containing = inst;
inst.gridX = 8;
inst.gridY = 11;
inst.monsterID = selectedMonster;
oGameController.targetMonster = inst;
with(inst){
	scrMonsterMaker(monsterID);
}


oGameController.curState = state.combatStart;
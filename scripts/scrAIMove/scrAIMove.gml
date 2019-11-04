var start = argument0;
var goal = argument1;

with(oMapTile){
	parent = noone;
	distanceScore = 0;
}


var open = ds_priority_create();
var closed = ds_list_create();

ds_priority_add(open, start, 0);

ds_list_add(closed, start);

while(ds_priority_size(open) > 0){
	var current = ds_priority_delete_min(open);
	
	if(current = goal){
		break;
	}
	
	for(var i = 0; i < ds_list_size(current.neighbors); i++){
		var neighbor = ds_list_find_value(current.neighbors, i);
		
		if(neighbor.containing == noone && neighbor.passable){
			costMod = 1;
		}
		var tempCost = neighbor.cost * costMod;
		tempCost += current.distanceScore;
		
		if(ds_list_find_index(closed, neighbor) < 0 || tempCost < neighbor.distanceScore){
			neighbor.distanceScore = tempCost;
			priority = tempCost + scrHeuristic(goal, neighbor);
		
			ds_priority_add(open, neighbor, priority);
			
			neighbor.parent = current;
			
			ds_list_add(closed, neighbor);
		
		}
		
			
	}
}

while(ds_priority_size(open) > 0){
	current = ds_priority_delete_min(open);
	
	for(var i = 0; i < ds_list_size(current.neighbors); i++){
		neighbor = ds_list_find_value(current.neighbors, i);
		if(neighbor.containing == noone && neighbor.passable){
			costMod = 1;
		}
		var tempCost = neighbor.cost * costMod;
		tempCost += current.distanceScore;
		
		if(ds_list_find_index(closed, neighbor) < 0 || tempCost < neighbor.distanceScore){
			neighbor.distanceScore = tempCost;
			neighbor.parent = current;
			
			ds_list_add(closed, neighbor);
		
		}	

	}
}
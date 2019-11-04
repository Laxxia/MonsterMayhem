//argument0 = origin node
//argument1 = units movement range

//reset all node data
scrClearNodes();
if(global.curPlayer.playerMove){

	var open, closed;
	var start, current, neighbor;
	var tempScore, range, costMod;

	//declare relevant variables from arguments
	start = argument0;
	range = argument1 + 1;

	//Create data structures
	open = ds_priority_create();
	closed = ds_list_create();

	//Add starting node to open list
	ds_priority_add(open, start, start.distanceScore);

	//While open queue is not empty, repeat till all nodes have been looked at
	while(ds_priority_size(open) > 0){
		//Remove node with lowest distancescore
		current = ds_priority_delete_min(open);
		//add to closed list
		ds_list_add(closed, current);
	
		//step through all of currents neighbors
		for(var i = 0; i < ds_list_size(current.neighbors); i++){
			//Store current neghbor in neighbor variable
			neighbor = ds_list_find_value(current.neighbors, i);
		
			//add neighbor to open list if it qualifies
			//is passable
			//has no occupant
			//projected score is less than movement range
			//is not already in the closed list
			if(ds_list_find_index(closed, neighbor) < 0 && neighbor.passable && neighbor.containing == noone && (neighbor.cost + current.distanceScore < range)  ){
				//Only calc new g score if it hasn't been calculated
				if(ds_priority_find_priority(open, neighbor) == 0 || ds_priority_find_priority(open, neighbor) == undefined){
					costMod = 1;
					//Give neighbor appropriate parent
					neighbor.parent = current;
					//Calcualte Gscore of neighbor with costmod
					neighbor.distanceScore = current.distanceScore + (neighbor.cost * costMod);
					//Add neighbor to open list so it can be checked out too
					ds_priority_add(open, neighbor,neighbor.distanceScore);
				
				}
			}
		
		}
	}

	ds_priority_destroy(open);

	//Color move nodes then destroy closed list
	for(i = 0; i < ds_list_size(closed); i++){
		current = ds_list_find_value(closed, i);
		current.moveNode = true;
		scrColorMoveNodes(current, range);
	}

	ds_list_destroy(closed);
}
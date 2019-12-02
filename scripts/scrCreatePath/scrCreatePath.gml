var current = argument1;
var targetPlayer = argument0;

var path = ds_priority_create();

ds_priority_add(path, current, current.distanceScore);

//step through each node parent to parent
while(current.parent != noone){
	//add parent node to queue priorirty equal to parents score
	ds_priority_add(path, current.parent, current.parent.distanceScore);
	
	//set current equal to currents parent ready to go again
	current = current.parent;
}

do{
	//delete clowest priority node closest to actors store in current
	current = ds_priority_delete_min(path);
	
	//add current nodes sprite coordinates to selectedActors path
	path_add_point(targetPlayer.movementPath, current.x, current.y, 100);
}until(ds_priority_empty(path));

///Clean up queue
ds_priority_destroy(path);
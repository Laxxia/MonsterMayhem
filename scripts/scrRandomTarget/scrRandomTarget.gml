var atkTarg = noone;
node = global.grid[# gridX, gridY];
	
	targetList = ds_list_create();
	
	for (var i = 0; i < ds_list_size(node.neighbors); i ++){
		neighbor = ds_list_find_value(node.neighbors, i);
		
		if(neighbor.containing != noone){
			if(neighbor.containing.objectType = combatType.friendly){
				ds_list_add(targetList, neighbor.containing);
			}
		}
	}
	if(ds_list_size(targetList) > 0){
		if(atkTarg == noone){
	 		atkTarg = ds_list_find_value(targetList, irandom_range(0, ds_list_size(targetList) -1));
		}
	}
ds_list_destroy(targetList);

return atkTarg;
var targetPlayer = global.curPlayer
var temp = noone;
	var current = targetPlayer.currentTile;
	for(var i = 0; i < ds_list_size(current.neighbors); i++){
		var neighbor = ds_list_find_value(current.neighbors, i);
		if(temp == noone){
			if(neighbor.containing != noone){
				if(neighbor.containing.objectType == combatType.monster){
					temp = neighbor.containing;
				}
			}
		} else {return(temp);};
	}
return(temp);
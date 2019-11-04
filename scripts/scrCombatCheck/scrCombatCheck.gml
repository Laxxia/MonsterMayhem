var targetPlayer = global.curPlayer
var triggered = false;
if(attackChecked = false){
	var current = targetPlayer.currentTile;
	for(var i = 0; i < ds_list_size(current.neighbors); i++){
		var neighbor = ds_list_find_value(current.neighbors, i);
		if(neighbor.containing != noone){
			var temp = neighbor.containing;
			if(temp.objectType = combatType.monster){
				enabled = true;
				triggered = true;
			}
		} else if(triggered != true){enabled = false;}
	}
	attackChecked = true;
	triggered = false;
}
var aiHitLocations = argument0;
var hitLocPool = argument1;

var maxheight = ds_grid_height(hitLocPool);


for(var i = 1; i < maxheight; i++){
	switch(hitLocPool[# hitLocationTable.loc, i]){
		case "head":
			ds_list_add(aiHitLocations[? "head"], hitLocPool[# hitLocationTable.locID, i]);
			ds_list_shuffle(aiHitLocations[? "head"]);
		break;
		case "body":
			ds_list_add(aiHitLocations[? "body"], hitLocPool[# hitLocationTable.locID, i]);
			ds_list_shuffle(aiHitLocations[? "body"]);
		break;
		case "legs":
			ds_list_add(aiHitLocations[? "legs"], hitLocPool[# hitLocationTable.locID, i]);
			ds_list_shuffle(aiHitLocations[? "legs"]);
		break;
		case "arms":
			ds_list_add(aiHitLocations[? "arms"], hitLocPool[# hitLocationTable.locID, i]);
			ds_list_shuffle(aiHitLocations[? "arms"]);
		break;
	
	}
}

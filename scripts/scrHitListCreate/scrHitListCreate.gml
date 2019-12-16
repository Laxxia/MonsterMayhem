var hitCount = argument0;
var type = argument1;

var list = oMonster.aiHitLocations[? type];
var pool = oMonster.hitLocPool;
var inst = noone;
switch(hitCount){
	case 4:
		inst = instance_create_layer(xstart + 5, ystart + 65 * 4, "locationCards",oHitLocCard);
		inst.locationID = ds_list_find_value(list, 3)
		inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 3)];
	case 3:
		inst = instance_create_layer(xstart + 5, ystart + 65 * 3, "locationCards",oHitLocCard);
		inst.locationID = ds_list_find_value(list, 2)
		inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 2)];
	case 2:
		 inst = instance_create_layer(xstart + 5, ystart + 65 * 2, "locationCards",oHitLocCard);
		 inst.locationID = ds_list_find_value(list, 1)
		 inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 1)];
	case 1:
		inst = instance_create_layer(xstart + 5, ystart + 10, "locationCards",oHitLocCard);
		inst.locationID = ds_list_find_value(list, 0)
		inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 0)];
	break;
}
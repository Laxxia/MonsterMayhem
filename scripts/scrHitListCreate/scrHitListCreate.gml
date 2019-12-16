var hitCount = argument0;
var type = argument1;

var list = oMonster.aiHitLocations[? type];
var pool = oMonster.hitLocPool;
var inst = noone;
switch(hitCount){
	case 4:
		inst = instance_create_layer(x + 15 * 4, y + 5, "locationCards",oHitLocCard);
		inst.locationID = ds_list_find_value(list, 3)
		inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 4)];
	case 3:
		inst = instance_create_layer(x + 15 * 3, y + 5, "locationCards",oHitLocCard);
		inst.locationID = ds_list_find_value(list, 2)
		inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 3)];
	case 2:
		 inst = instance_create_layer(x + 15 * 2, y + 5, "locationCards",oHitLocCard);
		 inst.locationID = ds_list_find_value(list, 1)
		 inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 2)];
	case 1:
		inst = instance_create_layer(x + 15 * 1, y + 5, "locationCards",oHitLocCard);
		inst.locationID = ds_list_find_value(list, 0)
		inst.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 1)];
	break;
}
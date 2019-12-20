var hitCount = argument0;
var type = argument1;

var list = oMonster.aiHitLocations[? type];
var pool = oMonster.hitLocPool;
switch(hitCount){
	case 4:
		hitCard4.locationID = ds_list_find_value(list, 3)
		hitCard4.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 3)];
		scrHitListCardsActivate(3);
	case 3:
		hitCard3.locationID = ds_list_find_value(list, 2)
		hitCard3.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 2)];
		scrHitListCardsActivate(2);
	case 2:
		 hitCard2.locationID = ds_list_find_value(list, 1)
		 hitCard2.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 1)];
		 scrHitListCardsActivate(1);
	case 1:
		hitCard1.locationID = ds_list_find_value(list, 0)
		hitCard1.text = pool[# hitLocationTable.locName, ds_list_find_value(list, 0)];
		scrHitListCardsActivate(0);
	break;
}
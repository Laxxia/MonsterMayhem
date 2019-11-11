var atkTarg = noone;
heroList = ds_list_create();

with(oPlayer) {
    if (objectType = combatType.friendly) {
        ds_list_add(other.heroList, id);
    }
}

var rand = irandom_range(0, ds_list_size(heroList) - 1);
atkTarg = ds_list_find_value(heroList, rand);

ds_list_destroy(heroList);
return atkTarg;
/// @description Insert description here
// You can write your code in this editor
status = "miss";

damage = 0;
damageType = "Piercing";

target = noone;

owner = noone;

//path information
movementPath = path_add();
path_set_closed(movementPath, false);
path_set_kind(movementPath, 2);
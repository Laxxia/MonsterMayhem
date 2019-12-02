var currentTarget = argument0
var inst = instance_create_depth(700, 160, -8000, oCharacterMenu);
inst.player = currentTarget;
with(inst){
	scrPopulate(player);
}
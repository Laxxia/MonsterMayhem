var player = argument0;

//for loop for this
var inst = instance_create_depth(x + 50, y + 160, -9900, oInventoryOptions);
inst.player = player;

var inst2 = instance_create_depth(x + 140, y + 50, -9900, oNameInput);
inst2.creator = id;

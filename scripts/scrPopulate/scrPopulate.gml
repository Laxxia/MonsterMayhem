var player = argument0;

//for loop for this
var inst = instance_create_depth(x + 50, y + 160, -9900, oInventoryOptions);
inst.player = player;
inst.menuID = id;
buttons[0] = inst;
buttonCount ++;

var inst2 = instance_create_depth(x + 140, y + 50, -9900, oNameInput);
inst2.creator = id;
buttons[1] = inst2;
buttonCount ++;

var inst3 = instance_create_depth(x + 450, y + (sprite_height - 100), -9900, oSmButton);
inst3.idPointer = id;
inst3.image_yscale = .75
inst3.image_xscale = .75
inst3.type = "Character Create";
inst3.enabled = true;
buttons[2] = inst3;
buttonCount++;
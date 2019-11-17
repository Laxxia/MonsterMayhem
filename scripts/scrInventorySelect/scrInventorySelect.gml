var currentTarget = argument0;
//Change this to being the oCharacterMenu create, and then when the weapon is selected from there
//it will call the oInventory select, and then you can probably duplicate the oInventorySelect to
//the other armor protections, but also important!: Think about how armor is going to really work
//possibly change it so itss a switch and it calls the same object but it will be pulling from the 
//different CSV's I think that works best.
var inst = instance_create_depth(736, 160, -8000, oInventorySelect)
inst.characterID = currentTarget;
/// @description Insert description here
// You can write your code in this editor
if (visualState == VisualState.inactive) exit;
draw_self();
if(charID != -1 && global.characterInventory[# charID, charStats.weaponID] != -1){
		draw_text(x, y+ sprite_height + 10, string(global.characterInventory[# charID, charStats.name]));
		draw_text(x, y+ sprite_height + 20, string(scrGetWeapon(global.characterInventory[# charID, charStats.weaponID])));	
}

/// @description Insert description here
// You can write your code in this editor
if(charID != -1){
		draw_text(x, y+70, string(global.characterInventory[# charID, charStats.name]));
		draw_text(x, y+80, string(scrGetWeapon(global.characterInventory[# charID, charStats.weaponID])));	
}
draw_self();

/// @description Insert description here
// You can write your code in this editor
draw_self();
if(charID != -1){
	if( global.characterInventory[charID] != -1){
		draw_text(x, y+70, string(global.weapons[# 1, global.characterInventory[charID]]));
	}
}
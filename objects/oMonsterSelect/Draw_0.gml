/// @description Insert description here
// You can write your code in this editor
draw_self();
if(oGameController.selectedMonster != -1){
	draw_text(x, y+70, string(oGameController.selectedMonster));
}  
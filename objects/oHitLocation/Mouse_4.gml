/// @description Insert description here
// You can write your code in this editor
if(oGameController.curPlayer != noone){
	oGameController.curPlayer.hitChance = hitChance;
	oGameController.curPlayer.playerState = "begin attack"
	player_hitLocation_menu_close();
}
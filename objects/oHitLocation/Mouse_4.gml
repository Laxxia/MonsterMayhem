/// @description Insert description here
// You can write your code in this editor
if(oGameController.curPlayer != noone){
	oGameController.curPlayer.hitChance = hitChance;
	hitCardLocList.hitLocation = hitLocation; 
	oGameController.curPlayer.playerState = "begin attack"

	player_hitLocation_menu_close();
}
// do it in the begin attack state, call the pop up pass the correct id and run the script with that argument
// then just like, pull from the list going down for however many attacvks on the succesful hits. 
//add a chance to change any hit location for a trap card, but the chances increase with each hit.
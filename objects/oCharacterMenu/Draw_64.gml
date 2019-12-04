/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (visualState == VisualState.inactive) exit;
draw_self();
if(player != noone){
	//draw_sprite(sPlayer, player, x+ 450, y + 50);
	draw_sprite_ext(sPlayer, player, x + 450, y+50, 2,2, 0, c_white, 1);
	if(playerInfo[0] != -1){
		draw_text(x + 450, y + 200, "Name: " + string(playerInfo[0]));
	}
	if(playerInfo[1] != -1){
		draw_text(x + 450, y + 215, "Weapon: " + string(scrGetWeapon(playerInfo[1])));
	}
}
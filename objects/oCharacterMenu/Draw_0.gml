/// @description Insert description here
// You can write your code in this editor
draw_self();
if(player != noone){
	//draw_sprite(sPlayer, player, x+ 450, y + 50);
	draw_sprite_ext(sPlayer, player, x + 450, y+50, 2,2, 0, c_white, 1);
}
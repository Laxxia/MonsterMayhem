/// @description Insert description here
// You can write your code in this editor
if(room = combatArena){	
	if(place_meeting(x, y, oGridSpace)){
		if(hoverNode != noone){
			draw_sprite(sSelected, -1, hoverNode.x, hoverNode.y);
		}
	}
}
	draw_self();
if(room = combatArena){
	if(hoverNode != noone){
		tempText = string(gridX) + " / " + string(gridY);
		draw_set_color(c_black);
		draw_rectangle(0, 100, string_width(tempText), string_height(tempText), false);
		draw_set_color(c_white);
		draw_text(0, 100, tempText);
	}
}
 /// @description Insert description here
// You can write your code in this editor
//if cursor is hovering over a different node than actor
if(	global.curState = state.moving){
	if(place_meeting(oCursor.x, oCursor.y, oGridSpace) && oCursor.hoverNode != noone && oCursor.hoverNode != currentTile){
		current = oCursor.hoverNode;
	
		//Step through every node in the chain parent to parent until we reach the player node
		//TODO - there is a bug here when moving cursor out of the screen of play its the same bug as above. the placemeting tries to fix it but its not 
		while(current.parent != noone){
			draw_line_width_colour(current.x + 32, current.y + 32, current.parent.x + 32, current.parent.y +32, 4, c_lime, c_lime)
			current = current.parent;
		}
	}

}

if(playerState = "idle"){
	draw_text(x, y+70, string(global.weapons[# weaponStats.weaponName, currentWeapon]));
}

if(shake > 0){
	draw_sprite_ext(sprite_index, -1, x+irandom_range(-shakeMag, shakeMag), y + irandom_range(-shakeMag, shakeMag), 1, 1, 0, c_white, 1;
	
} else {
	draw_self();
}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (visualState == VisualState.inactive) exit;

draw_self();
//To Do this will be changed to hit location later
//Also chance the hit percentage chances to possible be like, the hit chance of the location AND the weapons chance with it
hitText = hitChance * 100;
switch(location){
	case 0:
		var inst = draw_text(x + sprite_width + 5, y + (sprite_height/2) - 10, "Head");
		draw_text(x + sprite_width + 5, y + (sprite_height/2) + 5, string(hitText) + "%");
	break;
	case 1:
		var inst = draw_text(x + sprite_width + 5, y + (sprite_height/2) - 10, "Chest");
		draw_text(x + sprite_width + 5, y + (sprite_height/2) + 5, string(hitText) + "%");
	break;
	case 2:
		var inst = draw_text(x + sprite_width + 5, y + (sprite_height/2) - 10, "Legs");
		draw_text(x + sprite_width + 5, y + (sprite_height/2) + 5, string(hitText) + "%");
	break;
	case 3:
		var inst = draw_text(x + sprite_width + 5, y + (sprite_height/2) - 10, "Arms");
		draw_text(x + sprite_width + 5, y + (sprite_height/2) + 5, string(hitText) + "%");
	break;
	case 4: 
		var inst = draw_text(x + sprite_width + 5, y + (sprite_height/2) - 10, "Feet");
		draw_text(x + sprite_width + 5, y + (sprite_height/2) + 5, string(hitText) + "%");
	break;
	case 5:
}
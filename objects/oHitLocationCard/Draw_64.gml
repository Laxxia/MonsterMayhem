/// @description Insert description here
// You can write your code in this editor
if (visualState == VisualState.inactive) exit;

draw_self();
switch(type){
	case "Location List":
	break;
	case "Location Info":
		draw_text(x + 10, y + sprite_width, "Name: " + locationInformation[0]);
	break;
	case "Hit Order":
	break;
}
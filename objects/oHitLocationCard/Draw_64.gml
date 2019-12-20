/// @description Insert description here
// You can write your code in this editor
if (visualState == VisualState.inactive) exit;

draw_self();
switch(type){
	case "Location List":
	break;
	case "Location Info":
		draw_text(x + 10, y + (128/*location info*/+ 200), "Name: " + locationInformation[0]);
		draw_text_ext(x + 10, y + (128 + 220), "Info: " + locationInformation[1], -1, 390);
	break;
	case "Hit Order":
	break;
}
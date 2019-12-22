/// @description Insert description here
// You can write your code in this editor
if (visualState == VisualState.inactive) exit;

draw_self();
switch(type){
	case "Location List":
	break;
	case "Location Info":
		if(locationInformation[0] != -1){
			draw_text(x + 10, y + (128/*location info*/+ 200), "Name: " + string(locationInformation[0]));
			draw_text_ext(x + 10, y + (128 + 220), "Info: " + string(locationInformation[1]), -1, 390);
		}
	break;
	case "Hit Order":
		var list = oHitLocationPanel.hitOrder;
		if(!ds_list_empty(list)){
			for(var i = 0; i < ds_list_size(list); i++){
				draw_text(x + 10, y + (20 + (15 * i)), string(i) + ": " + string(oMonster.hitLocPool[# hitLocationTable.locName, list[| i]]));
			}
		}
	break;
}
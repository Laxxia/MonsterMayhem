if(oGameController.remainingSurvivors <= 0 && room == combatArena){
	var type = "Loss";
} else if(room == combatArena) {
	var type = "Death";
}
if(oGameController.popup) exit;

//Open DisplayMenu
var _menu_layer=layer_get_id("textPopup");
popupBox.type = type;
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.popup=true;
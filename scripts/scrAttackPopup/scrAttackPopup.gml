var cardID = argument0;
if(oGameController.popup) exit;

//Open DisplayMenu
var _menu_layer=layer_get_id("textPopup");
with(popupBox){
		type = "monster attack";
		eventID = cardID;
		creator = other.id;
}
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.popup=true;
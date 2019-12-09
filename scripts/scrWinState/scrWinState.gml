if(oGameController.popup) exit;

//Open DisplayMenu
var _menu_layer=layer_get_id("textPopup");
with(popupBox){
		type = "Win";
}
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.popup=true;
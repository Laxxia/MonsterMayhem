if(oGameController.menu_open) exit;

//Open DisplayMenu
var _menu_layer=layer_get_id("PlayerActions");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open=true;
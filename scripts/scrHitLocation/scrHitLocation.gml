if(actionBarPopup.menu_open) exit;

//Open DisplayMenu
var _menu_layer=layer_get_id("hitLocations");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
actionBarPopup.menu_open=true;

if(oGameController.menu_open) exit;
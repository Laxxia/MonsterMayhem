var _ui_layer=layer_get_id("hitLocations");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(actionBarPopup) menu_open=false;

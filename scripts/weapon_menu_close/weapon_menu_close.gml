var _ui_layer=layer_get_id("WeaponPicker");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(characterInfoPanel) menu_open=false;

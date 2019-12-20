var value = argument0;

var hitLayer = ds_list_find_value(oGameController.hitLocLayers, value)

var _menu_layer=layer_get_id(hitLayer);
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
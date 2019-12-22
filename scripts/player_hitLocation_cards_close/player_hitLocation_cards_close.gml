var value = oGameController.curPlayer.attackCheck;

//Activates random cards and deactivates cards, passing attackCheck is probably wrong, so Look into this!
//Possible fix is to hold the variable with how many cards are active, through that reverse switch.

for(var i = value; i > -1; i --;){
	var hitLayer = ds_list_find_value(oGameController.hitLocLayers, i)

	var _menu_layer=layer_get_id(hitLayer);
	with(_ui_parent)
	{
		ui_element_toggle_active(layer == _menu_layer);
	}
}
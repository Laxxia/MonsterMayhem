var _ui_layer=layer_get_id("locationChoice");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(actionBarPopup) menu_open=false;


player_hitLocation_cards_close();
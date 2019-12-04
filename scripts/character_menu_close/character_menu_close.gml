if(characterInfoPanel.menu_open) exit;

var _ui_layer=layer_get_id("CharacterInfo");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(oGameController) menu_open=false;

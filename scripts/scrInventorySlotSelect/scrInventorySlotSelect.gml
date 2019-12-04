
if(characterInfoPanel.menu_open) exit;
var menuID = argument0;
//Open DisplayMenu
//Use a switch here for the different menus I think

var _menu_layer = layer_get_id("WeaponPicker");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}

characterInfoPanel.menu_open=true;
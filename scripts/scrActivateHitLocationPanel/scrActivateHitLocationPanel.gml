if(actionBarPopup.menu_open) exit;

var hits = argument0;

//Open DisplayMenu
var _menu_layer=layer_get_id("PlayerActions");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
actionBarPopup.menu_open=true;
switch(hits){
	case 1:
	break;
	case 2:
	break; 
}
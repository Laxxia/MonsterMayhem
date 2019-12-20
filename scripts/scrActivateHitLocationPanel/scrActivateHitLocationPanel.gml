if(actionBarPopup.menu_open) exit;

var hits = argument0;
var type = hitCardLocList.hitLocation ; 

//Open DisplayMenu
var _menu_layer=layer_get_id("locationChoice");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
actionBarPopup.menu_open=true;
scrHitListCreate(hits, type);
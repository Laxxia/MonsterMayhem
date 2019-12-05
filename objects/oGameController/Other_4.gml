/// @description Insert description here
// You can write your code in this editor
if(room = combatArena){
	scrArenaCreate();
	var _ui_layer=layer_get_id("StartingElements");
	with(_ui_parent)
	{
		ui_element_toggle_active(layer == _ui_layer);
		timer=length;
	}
}

if(room = Menu){
	var _ui_layer=layer_get_id("Buttons");
	with(_ui_parent)
	{
		ui_element_toggle_active(layer == _ui_layer);
		timer=length;
	}
}


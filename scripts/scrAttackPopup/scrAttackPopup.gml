//oGameController.curState = state.overlay;
//var cardID = argument0;
//var inst = instance_create_layer(x, y, "UIBase", oPopUp);
//	inst.image_xscale = 2;
//	inst.image_yscale = 2;
//	inst.x = room_width/2 - (inst.sprite_width/2)
//	inst.y = room_height/2 - (inst.sprite_height /2)

var cardID = argument0;
if(oGameController.popup) exit;

//Open DisplayMenu
var _menu_layer=layer_get_id("textPopup");
with(popupBox){
		type = "monster attack";
		eventID = cardID;
		creator = other.id;
}
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.popup=true;
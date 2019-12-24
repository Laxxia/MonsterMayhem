var 

var _ui_layer=layer_get_id("locationChoice");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(actionBarPopup) menu_open=false;

var hitCount = oGameController.curPlayer.attackCheck;

switch(hitCount){
	case 4:
		player_hitLocation_cards_close(3);
	case 3:
		player_hitLocation_cards_close(2);
	case 2:
		 player_hitLocation_cards_close(1);
	case 1:
		player_hitLocation_cards_close(0);
	break;
}
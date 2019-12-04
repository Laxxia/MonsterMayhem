
if(oGameController.menu_open) exit;
var playerID = argument0;
//Open DisplayMenu
characterInfoPanel.player = playerID;
characterInfoPanel.playerInfo[0] = global.characterInventory[# playerID, charStats.name];
characterInfoPanel.playerInfo[1] = global.characterInventory[# playerID, charStats.weaponID];

var _menu_layer=layer_get_id("CharacterInfo");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open=true;
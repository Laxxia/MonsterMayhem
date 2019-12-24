switch(type){
	case "Hit Location Parse":
	var list = oHitLocationPanel.hitOrder;
	if(ds_list_size(list) < oHitLocationPanel.maxHits){exit;}
	for(var i = 0; i < ds_list_size(list); i++){
		oGameController.curPlayer.locationTargets[i] = list[| i];
	}
	oGameController.curPlayer.playerState = "attacking";
	ds_list_clear(list);
	player_hitLocation_popup_close();
	break;
	case "Add Hit Location":
		var list = oHitLocationPanel.hitOrder;
		if(ds_list_find_index(list, creator.locID) = -1){
			ds_list_add(list, creator.locID);
		}
		
	break;
	case "Move Player":
		if(oGameController.curPlayer.playerMove){
			var inst = oGameController.curPlayer;
			var currentTile = inst.currentTile;
			var move = inst.move;
			scrMovementRange(currentTile, move);
			oGameController.curState = state.moving;
		}
	break;
	case "Player Attack":
		if(oGameController.curPlayer.playerAttackPoint && scrCombatCheck() != noone){
			oGameController.curPlayer.attackTimer = 10;
			oGameController.curPlayer.attackTarget = oGameController.targetMonster;
			oGameController.curPlayer.playerState = "hit choice";
		}
	break;
	case "End Turn":
		var inst = oGameController.curPlayer
		inst.playerMove = false;
		inst.playerAttackPoint = false;
		inst.playerState = "ending turn";
		oGameController.curPlayer = noone;
		oGameController.curState = state.playerTurn;
		scrClearNodes();
		player_action_menu_close();
	break;
	case "Start Combat":
		if(global.unplacedSurvivors == 0){	
			oGameController.curState = state.monsterTurn;
			var _ui_layer=layer_get_id("StartingElements");
			with(_ui_parent)
			{
				ui_element_toggle_active(layer == _ui_layer);
			}
		}
		
	break;
	case "Inventory Submit":
		for(var j = 0; j < array_length_1d(creator.playerInfo); j++){
			global.characterInventory[# creator.player, j] = creator.playerInfo[j]
		}
		character_menu_close();
	break;
	case "Weapon Select":
		creator.creator.playerInfo[1] = creator.currentWeapon;
		creator.currentWeapon = -1;
		weapon_menu_close();
	break;
	case "Monster Submit":
		oGameController.selectedMonster = creator.currentMonster;
		creator.creator.image_index = oGameController.selectedMonster;
		monster_menu_close();
	break;
	case "Next Room":
		room = combatArena; //Make this better
	break;
	case "Attacked":
		attack_popup_close();
		creator.creator.monsterState = "attack";
	break;
		case "Restart":
		game_restart();
	break;
	case "Death":
		attack_popup_close();
	break;
}
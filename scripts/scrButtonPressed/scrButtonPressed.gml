switch(type){
	case "Move Player":
		var inst = targetPlayer;
		var currentTile = inst.currentTile;
		var move = inst.move;
		scrMovementRange(currentTile, move);
		global.curState = state.moving;
	break;
	case "Player Attack":
			targetPlayer.attackTimer = 10;
			targetPlayer.attackTarget = targetMonster;
			targetPlayer.playerState = "hit choice";
	break;
	case "End Turn":
		var inst = global.curPlayer
		inst.playerMove = false;
		inst.playerAttack = false;
		inst.playerState = "ending turn";
		global.curPlayer = noone;
		global.curState = state.playerTurn;
		scrClearNodes();
	break;
	case "Start Combat":
		if(global.unplacedSurvivors == 0){	
			global.curState = state.monsterTurn;
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
		weapon_menu_close();
	break;
	case "Monster Submit":
		oGameController.selectedMonster = creator.currentMonster;
		creator.creator.image_index = oGameController.selectedMonster;
		monster_menu_close();
	break;
}
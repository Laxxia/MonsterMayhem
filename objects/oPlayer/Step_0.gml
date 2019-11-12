/// @description Insert description here
// You can write your code in this editor
if (shake > 0) {
    shake -= 1;
}
if (grabbed) {
    x = mouse_x;
    y = mouse_y;
}

if (global.curPlayer = id) {
    image_alpha = .5;
} else {
    image_alpha = 1;
}
if(global.curState == state.playerTurn){
	switch (playerState) {
		case "start turn":
		playerMove = true;
		playerAttack = true;
		endTurn = false;
		if(status == "Knocked Down"){
			playerState = "ending turn";
		} else {
			playerState = "idle";
		}
		break;
	    case "begin player path":
	        path_start(movementPath, pathSpeed, 0, true);
	        playerState = "moving";
	        global.curPlayer = noone;
	        break;
	    case "begin attack":
	        //this would set up before attack animation
	        attackTimer -= 1;
	        if (attackTimer <= 0) {
	            playerState = "attacking";
	        }
	        break;

	    case "attacking":
	        //a for loop here where speed is the max for loop count
	        playerAttack = false;
	        if (attackTarget != noone) {
	            var attackCheck = scrHitCheck(currentWeapon);
	            var woundCheck = 0;
	            if (attackCheck > 0) {
	                woundCheck = scrToWound(currentWeapon, attackTarget, attackCheck); // TO DO  - count crits
	            }
	        }
	        scrClearNodes();
	        switch (global.weapons[# weaponStats.weaponType, currentWeapon]) {
	            case "Melee":
	                for(var j = 0; j < global.weapons[# weaponStats.weaponSpeed, currentWeapon]; j++;){
						if (woundCheck > 0) {
		                    for (var i = 0; i < 6; i++) {
		                        var inst = instance_create_depth(attackTarget.x + 32, attackTarget.y + 32, -9999, oBiff)
		                        inst.direction = irandom(360);
		                        inst.speed = irandom_range(2, 4);
		                        inst.scale = choose(2, 3);
		                        inst.image_speed = .5;
		                        //if (woundCheck == "crit") {
		                        //    inst.color = c_yellow;
		                        //}
		                    }
		                    //if (woundCheck == "crit") {
		                    //    attackTarget.shake = 8;
		                    //    attackTarget.shakeMag = 8;
		                    //} else {
		                        attackTarget.shake = 4;
		                        attackTarget.shakeMag = 4;
		                    //}
		                    attackTarget.healthPoints--;
		                    var dmg = instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)
		                    dmg.text = "-1" //string(other.damage);
		                    dmg.ground = y;

		                    //if (woundCheck == "crit") {
		                    //    dmg.font = fCrit;
		                    //    dmg.text = dmg.text + "!";
		                    //}
		                } else {
		                    with(instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)) {
		                        text = "Miss!";
		                        ground = y;
		                    }
		                }
						woundCheck --;
					}
	                playerState = "end attack";
	                break;
	            case "Ranged":
	                break;
	        }
	        break;
	    case "end attack":
	            if (!playerMove) {
	                playerState = "ending turn"
					global.curPlayer = noone;
	            } else {
	                playerState = "idle";
	            }
	        break;
	    case "ending turn":
			if(status == "Knocked Down"){
				status = "Normal";
				playerMove = false;
				playerAttack = false;
				image_index = charID -1;
			}
	        endTurn = true;
	        scrEndTurnCheck();
	        break;
	}

	if(healthPoints <= 0){
		oGameController.remainingSurvivors --;
		global.survivorList[charID] = -1;
		currentTile.containing = noone;
		currentTile.passable = true;
		scrLossCheck();
		instance_destroy();
	}
}
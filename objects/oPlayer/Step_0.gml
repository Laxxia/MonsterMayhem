/// @description Insert description here
// You can write your code in this editor
if(grabbed){
	x = mouse_x;
	y = mouse_y;
}

if(global.curPlayer = id){
	image_alpha = .5;
} else {image_alpha = 1;}

var tempDamage = 0;
switch(playerState){
	case "begin player path":
		path_start(movementPath, pathSpeed, 0, true);
		playerState = "moving";
		global.curPlayer = noone;
	break;
	case "begin attack":
		//this would set up before attack animation
		attackTimer -= 1;
		if(attackTimer <= 0){
			playerState = "attack";
		}
	break;
	
	case "attacking":
			//a for loop here where speed is the max for loop count
			playerAttack = false;
			if(attackTarget != noone){
				var attackCheck = scrHitCheck(currentWeapon);
				var woundCheck = "";
				if(attackCheck){
					woundCheck = scrToWound(currentWeapon, attackTarget);
					if(woundCheck != "miss"){
						tempDamage += 1;
					} //ToDo - add crit event
				} else {woundCheck = "miss";}
			}
			scrClearNodes();
		switch(global.weapons[# weaponStats.weaponType, currentWeapon]){
		case "Melee":
			if(woundCheck != "miss"){
				for(var i = 0; i < 6; i++){
					var inst = instance_create_depth(attackTarget.x + 32, attackTarget.y + 32, -9999, oBiff)
						inst.direction = irandom(360);
						inst.speed = irandom_range(2,4);
						inst.scale = choose(2,3);
						inst.image_speed = .5;
						if(woundCheck == "crit"){
							inst.color = c_yellow;
						}
					if(woundCheck == "crit"){
						attackTarget.shake = 8;
						attackTarget.shakeMag = 8;
					} else {
						attackTarget.shake = 4;
						attackTarget.shakeMag = 4;
					}
					attackTarget.healthPoints -= tempDamage;
					var dmg = instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)
					dmg.text = "-1"//string(other.damage);
					dmg.ground = y;
		
					if(woundCheck == "crit"){
						dmg.font = fCrit;
						dmg.text = text + "!";
					}
				}
			} else {
				with(instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)){
					text = "Miss!";
					ground = y;
				}
			}
			playerState = "end attack";
			attackTimer = 30;
		break;
		case "Ranged":
		break;
		}
	break;
	case "end attack":
	attackTimer -= 1;
	if(attackTimer <= 0){
		if(!playerMove){
			global.curPlayer = noone;
		}
	}
	break
	
}
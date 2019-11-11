//For now all this will do is a basic Attack
//But in the future, this is going to actually pull the AI list, pop the top one etc.
var attackID = argument0;
var target = argument1;
var spd = aiPool[# monsterAI.spd, attackID];
var type = aiPool[# monsterAI.type, attackID]

if(type = "Attack"){
	var accuracy = aiPool[# monsterAI.accuracy, attackID];
	var damage = aiPool[# monsterAI.damage, attackID];
//For loop for the speed;
	var diceRoll = irandom_range(1,10);
	var woundCheck = "";
	if(objectType = combatType.friendly){
		if(diceRoll >= 10){
			woundCheck = "crit";
		}
		else if(diceRoll >= (accuracy + target.evasion)){
			woundCheck = "hit";
		} else {woundCheck = "miss";}
	}

	if (woundCheck != "miss") {
	    for (var i = 0; i < 6; i++) {
	        var inst = instance_create_depth(attackTarget.x + 32, attackTarget.y + 32, -9999, oBiff)
	        inst.direction = irandom(360);
	        inst.speed = irandom_range(2, 4);
	        inst.scale = choose(2, 3);
	        inst.image_speed = .5;
		}
	        if (woundCheck == "crit") {
	            inst.color = c_yellow;
	        }
	        if (woundCheck == "crit") {
	            attackTarget.shake = 8;
	            attackTarget.shakeMag = 8;
	        } else {
	            attackTarget.shake = 4;
	            attackTarget.shakeMag = 4;
	        }
	        attackTarget.healthPoints -= damage;
	        var dmg = instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)
	        dmg.text = "-" + string(damage);
	        dmg.ground = y;

	        if (woundCheck == "crit") {
	            dmg.font = fCrit;
	            dmg.text = text + "!";
	        }
	} else {
	    with(instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)) {
	        text = "Miss!";
	        ground = y;
	    }
	}
} else if (type = "Status"){
	scrTriggerScript(attackID, target);
}
monsterState = "end attack";
attackTimer = 30;
var weapon = argument0;
var target = argument1;
var attackCount = argument2;
var woundCount = 0;


for(var i = 0; i < attackCount; i++){
	var diceRoll = irandom_range(1,10);

	if(diceRoll >= 10){
	}//Todo -change this to 10 - luck later
	if(objectType = combatType.friendly){
		if(diceRoll + global.weapons[# weaponStats.strength, weapon] >= target.toughness){
			woundCount ++;
		}
	}
}
return woundCount;
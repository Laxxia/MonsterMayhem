var weapon = argument0;
var target = argument1;
var diceRoll = irandom_range(1,10);

if(diceRoll >= 10){
	return("crit");
}//Todo -change this to 10 - luck later
if(objectType = combatType.friendly){
	if(diceRoll + global.weapons[# weaponStats.strength, weapon] >= target.toughness){
		return("hit");
	} else return("miss");
}
var weapon = argument0;
var diceRoll = irandom_range(1,10);
if(objectType = combatType.friendly){
	if(diceRoll >= global.weapons[# weaponStats.toHit, weapon]){
		return true;
	} else return false;
}
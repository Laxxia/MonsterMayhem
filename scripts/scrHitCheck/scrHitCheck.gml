var weapon = argument0;
var hitCount = 0;
var hitChance = argument1;
var weaponChance = real(global.weapons[# weaponStats.toHit, weapon]);
var toHit = (weaponChance + (weaponChance* hitChance)) 
for(var i = 0; i <= global.weapons[# weaponStats.weaponSpeed, weapon]; i++){
	var diceRoll = irandom_range(1,20);
	if(objectType = combatType.friendly){
		if(diceRoll >= toHit){
//		if(diceRoll >= global.weapons[# weaponStats.toHit, weapon]){
			hitCount ++
		}
	}
}
return hitCount;
//For now all this will do is a basic Attack
//But in the future, this is going to actually pull the AI list, pop the top one etc.
var target = argument0;
var diceRoll = irandom_range(1,10);
var woundCheck = "";
if(objectType = combatType.friendly){
	if(diceRoll >= 10){
		woundCheck = "crit";
	}
	else if(diceRoll >= (2 + target.evasion)){
		woundCheck = "hit";
	} else {woundCheck = "miss";}
}
return woundCheck;

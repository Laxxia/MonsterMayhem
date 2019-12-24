var target = argument0;
var diceRoll = irandom_range(1,10);

if(diceRoll >= 4){
	target.brainHealth -= 1 // + monster level for future;
	scrKnockedDown(target);
}
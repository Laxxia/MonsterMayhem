var target = argument0;
var diceRoll = irandom_range(1,10);

if(diceRoll >= 4){
	target.status = "Knocked Down";
	target.brainHealth -= 1 // + monster level for future;
	target.image_index = 4;
}
//To Do -- also execute a knocked down script with the target when this happens to signify it has moved its status
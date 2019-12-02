var card = argument0;
var targetScript = aiPool[# monsterAI.targetScript, card];
attackTarget = noone;
attackTarget = scrMonsterTarget(targetScript, monsterID);
if(attackTarget != noone){
 	monsterState = "begin attack";
} else if(playerMove){
	monsterState = "find move node";
} else {monsterState = "idle";}
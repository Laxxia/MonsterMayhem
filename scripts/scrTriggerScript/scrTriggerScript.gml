var attackID = argument0;
var target = argument1;
var triggerScript = aiPool[# monsterAI.triggerID, attackID];
var scriptName = triggerScripts[triggerScript];
script_execute(scriptName, target);
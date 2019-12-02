var aiDeck = argument0;
var aiPool = argument1;
var tempDeck = ds_list_create();
var maxheight = ds_grid_height(aiPool);
//Will grab only phase 1 cards into the temporary deck to then turn into the list
//To DO - this will need to at some point just create a cap of possible cards? or maybe not :shrug:
for(var i = 1; i < maxheight; i++){
	if(aiPool[# monsterAI.phase, i] == 1){
		ds_list_add(tempDeck, aiPool[# monsterAI.actionID, i]);
		ds_list_shuffle(tempDeck);
	}
}
for(var j = 0; j < ds_list_size(tempDeck); j++){
		ds_stack_push(aiDeck, ds_list_find_value(tempDeck, j));
}
ds_list_destroy(tempDeck);
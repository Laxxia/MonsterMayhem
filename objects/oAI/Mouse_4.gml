/// @description Insert description here
// You can write your code in this editor
var deck = aiDeck;
var tempDeck = ds_list_create();
deckNames = [];

while(!ds_stack_empty(deck)){
		ds_list_add(tempDeck, ds_stack_pop(deck));
}
for(var i = 0; i < ds_list_size(tempDeck); i++){
		ds_stack_push(deck, ds_list_find_index(tempDeck, i));
}
for(var j = 0; i < ds_list_size(tempDeck); j++;){
	var card = ds_list_find_value(tempDeck, j) + 1;
	deckNames[j] = string(aiPool[# monsterAI.attackName, card]);
}
ds_list_destroy(tempDeck); 
pressed = !pressed;
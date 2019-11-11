var deck = argument0;
var tempDeck = ds_list_create();

while(!ds_stack_empty(deck)){
		ds_list_add(tempDeck, ds_stack_pop(deck));
		ds_list_shuffle(tempDeck);
}
for(var i = 0; i < ds_list_size(tempDeck); i++){
		ds_stack_push(deck, ds_list_find_value(tempDeck, i));
}
ds_list_destroy(tempDeck); 
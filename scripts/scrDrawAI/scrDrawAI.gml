var drawDeck = argument0;
var discardDeck = argument1;
var drawnCard = -1;
if(ds_stack_empty(drawDeck)){
	scrShuffleDeck(discardDeck);
	while(!ds_stack_empty(discardDeck)){
		ds_stack_push(drawDeck, ds_stack_pop(discardDeck));
	}
} 
drawnCard = ds_stack_pop(drawDeck);
ds_stack_push(discardDeck, drawnCard);
return drawnCard;
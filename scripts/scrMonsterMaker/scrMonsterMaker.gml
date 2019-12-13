monsterID = argument0;
image_index = monsterID;

switch(monsterID){
	case monster.FeyCursedPig:
		//TODO - There would be a secondary switch within each that will properly provide stats for a higher level mosnter fight
		aiPool = load_csv("FeyCursePig.csv");
		hitLocPool = load_csv("FCPHitLocs.csv")
		
		aiHitLocations[? "head"] = ds_list_create();
		aiHitLocations[? "body"] = ds_list_create();
		aiHitLocations[? "legs"] = ds_list_create();
		aiHitLocations[? "arms"] = ds_list_create();
		
		scrAIHitLocDeckBuilder(aiHitLocations, hitLocPool);
		scrAIDeckBuilder(aiDeck, aiPool);
		
		monsterName = "Fey Cursed Pig";
		move = 6;
		toughness = 8;
		healthPoints = 10;
		triggerScripts = [-1, scrIntimidate, -1];
	break;
}
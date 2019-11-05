monsterID = argument0;
image_index = monsterID;

switch(monsterID){
	case monster.FeyCursedPig:
		//TODO - There would be a secondary switch within each that will properly provide stats for a higher level mosnter fight
		//This is also where the AI deck will be created probably claling another script that will do it
		monsterName = "Fey Cursed Pig";
		move = 6;
		toughness = 8;
		healthPoints = 2;
	break;
}
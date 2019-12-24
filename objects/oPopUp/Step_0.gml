/// @description Insert description here
// You can write your code in this editor
event_inherited();
switch(type){
	case "Win":
		text[0] = "You've defeated the beast!";
		buttonChild.type = "Restart";
		type = "Complete";
	break;
	case "monster attack":
		var target = creator.attackTarget;
		text[0] = string(target) + " is being Attacked!";
		text[1] = "The monster uses " + string(creator.aiPool[# monsterAI.attackName, eventID]);
		//TODO - set it so you can choose to act at this time.
		buttonChild.type = "Attacked";
		buttonChild.text = "Accept Fate";
		type = "Complete";
	break;
	case "Loss":
		text[0] =  "The survivors have lost";
		buttonChild.type = "Restart";
		buttonChild.text = "Wallow";
		type = "Complete";
	break;
	
	case "Death":
	//If a character dies but there are still players on the board
		text[0] = "Event Occurence";
		text[1] = "Oh No!";
		text[2] =  "One of your boys has perished!";
		buttonChild.type = "Death";		
		buttonChild.text = "Lament the loss";
		type = "Complete";
	break;
	
	case "Complete":
	break;
}
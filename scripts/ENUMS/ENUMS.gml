enum state {
	moving,
	idle,
	combatStart,
	freeMovement,
	playerTurn,
	monsterTurn,
	playerStartTurn,
	win,
	lose,
	overlay,
	menu
}

enum charStats {
	name = 0,
	weaponID = 1,
	helmet = 2,
	chest = 3,
	arms = 4,
	legs = 5,
	boots = 6
}	



enum combatType {
	friendly,
	monster,
	object
}

enum monster {
	defaultMon = 0,
	FeyCursedPig = 1
}

enum weaponStats {
	weaponName = 1,
	weaponType = 2,
	weaponSpeed = 3,
	toHit = 4,
	strength = 5,
	abilityID = 6
}

enum monsterAI{
	actionID = 0,
	attackName = 1,
	targetScript = 2,
	spd = 3,
	accuracy = 4,
	damage = 5,
	triggerID = 6,
	phase = 7,
	type = 8
}

enum hitLocationTable{
	loc = 0,
	actionScript = 1,
	specialID = 2,
	locName = 3,
	locInfo = 4,
	locImage = 5,
	locID = 6
}
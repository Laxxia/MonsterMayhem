enum state {
	placing,
	attacking,
	moving,
	idle,
	combatStart,
	freeMovement,
	playerTurn,
	monsterTurn,
	playerStartTurn,
	win,
	lose,
	overlay
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
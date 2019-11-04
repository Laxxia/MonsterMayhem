enum state {
	placing,
	attacking,
	moving,
	idle,
	combatStart,
	freeMovement,
	playerTurn,
	monsterTurn
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
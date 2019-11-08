/// @description Insert description here
// You can write your code in this editor
draw_set_font(fDefault);
randomize();
//Constructor Properties//
	//Mapping props
global.cellSize = 64;
global.xStart = 50;
global.yStart = 50;

global.debug = false;
global.curState = state.idle;
global.curPlayer = noone;
global.survivorList[0] = -1;
global.holding = false;

instance_create_depth(x, y, -9999,oCursor);

//Load the CSVS!
global.weapons = load_csv("weapons.csv")

//TODO - create these CSV's

//Instantiate the monsters probably
monsters = [monster.defaultMon, monster.FeyCursedPig];

//Menu Props
global.menuSelected = false;
global.characterInventory = [-1, -1, -1, -1];
selectedMonster = -1; //TODO - when the transition occurs to the arena, call and build the AI deck from this variable
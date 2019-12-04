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
global.tempState = global.curState;

instance_create_layer(x, y, "Mouse", oCursor);

//Load the CSVS!
global.weapons = load_csv("weapons.csv") // Weapon Look UP Table


//Instantiate the monsters probably
monsters = [monster.defaultMon, monster.FeyCursedPig];

//Menu Props
selectedMonster = -1;
remainingSurvivors = 0;

global.characterInventory = ds_grid_create(4,7);
ds_grid_clear(global.characterInventory, -1);
menu_open = false;
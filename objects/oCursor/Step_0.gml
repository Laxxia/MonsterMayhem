/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

//TRANSFER MOVEMENT CODE FROM NODE TO THIS
if(room = combatArena){
	gridX = floor((x - global.xStart)/global.cellSize);
	gridY = floor((y - global.yStart)/global.cellSize);

	if(!place_meeting(x - 5 , y - 5, oGridSpace)){
		hoverNode = false;
		offGrid = true;
	} else {
		hoverNode = global.grid[# gridX, gridY];
		offGrid = false;
	}


	if(global.curState = state.moving){
		if(mouse_check_button_pressed(mb_left) && !offGrid){
			if(hoverNode.moveNode){
				scrMovePlayer();
				global.curState = state.playerTurn;
			}
		}
		if(mouse_check_button_pressed(mb_right)){
			global.curState = state.playerTurn;
			global.curPlayer = noone;
		}
	}
}
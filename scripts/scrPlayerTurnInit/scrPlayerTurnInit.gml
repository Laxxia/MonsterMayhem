for (var i = 0; i < array_length_1d(global.survivorList); i++){
	var player = global.survivorList[i];
	player.playerMove = true;
	player.playerAttack = true;
	player.endTurn = false;
}
global.curState = state.playerTurn;
 
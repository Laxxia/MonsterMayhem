for (var i = 0; i < array_length_1d(global.survivorList); i++){
	var player = global.survivorList[i];
	player.playerMove = true;
	player.playerAttack = true;
	player.endTurn = false;
	player.playerState = "start turn";
}
global.curState = state.playerTurn;
 
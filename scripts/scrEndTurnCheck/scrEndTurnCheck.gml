var survivorFinish = 0;
for (var i = 0; i < array_length_1d(global.survivorList); i++){
	if(global.survivorList[i].endTurn){
		survivorFinish ++;
	}
	if(survivorFinish == array_length_1d(global.survivorList)){
		global.curState = state.monsterTurn;
	}
}
 
var survivorFinish = 0;
for (var i = 1; i < array_length_1d(global.survivorList); i++){ //Starts on 1 because im dumb and theres an empty cell at survivorList[0] 
	if(global.survivorList[i].endTurn){
		survivorFinish ++;
	}
	if(survivorFinish == 4){
		global.curState = state.monsterTurn;
	}
}
 
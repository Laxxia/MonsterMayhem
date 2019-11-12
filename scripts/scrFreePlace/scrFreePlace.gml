if(place_meeting(oCursor.x,oCursor.y,oMapTile)){
	var inst = oCursor.hoverNode
	if(inst.containing == noone){
		if(beenPlaced){
			var tempTile = currentTile;
		}
		currentTile = inst;
		inst.containing = id;
		x = inst.x;
		y = inst.y;
		gridX = currentTile.gridX;
		gridY = currentTile.gridY; 
		grabbed = false;
		oCursor.holding = false;
		if(beenPlaced){
			tempTile.containing = noone;
		}
		if(beenPlaced = false){
			beenPlaced = true;
			global.unplacedSurvivors --;
		}
	}
}

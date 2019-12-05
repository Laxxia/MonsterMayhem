var current = hoverNode;
var targetPlayer = oGameController.curPlayer;

scrCreatePath(targetPlayer, current);

//first clear node of selected actor.

var targetPlayer = oGameController.curPlayer;
var tile = current;
var originalTile = targetPlayer.currentTile;

//Clear old tile info
originalTile.containing = noone;

//Set new tile info
targetPlayer.currentTile = tile;
targetPlayer.gridX = tile.gridX;
targetPlayer.gridY = tile.gridY;
tile.containing = targetPlayer;

targetPlayer.playerMove = false;
//Move Player
targetPlayer.playerState = "begin player path";

/*
targetPlayer.x = tile.x;
targetPlayer.y = tile.y;
*/
scrClearNodes();



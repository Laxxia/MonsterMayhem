var current = hoverNode;
var targetPlayer = global.curPlayer;

scrCreatePath(targetPlayer, current);

//first clear node of selected actor.

var targetPlayer = global.curPlayer;
var tile = current;
var originalTile = targetPlayer.currentTile;

//Clear old tile info
originalTile.containing = noone;

//Set new tile info
targetPlayer.currentTile = tile;
targetPlayer.gridX = tile.gridX;
targetPlayer.gridY = tile.gridY;
tile.containing = targetPlayer;

//Move Player
targetPlayer.playerState = "begin player path";

/*
targetPlayer.x = tile.x;
targetPlayer.y = tile.y;
*/

targetPlayer.playerMove = false;
scrClearNodes();



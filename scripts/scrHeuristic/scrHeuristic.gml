//finds manhatten distance between two points

var goal = argument0;
var node = argument1;

var temp = abs(goal.gridX - node.gridX) + abs(goal.gridY - node.gridY);

return(temp);


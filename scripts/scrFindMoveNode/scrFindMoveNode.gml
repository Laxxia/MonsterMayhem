var map = global.grid;
var distance = 0;
heroList = ds_priority_create();
with(oPlayer) {
    if (objectType = combatType.friendly) {
        ds_priority_add(other.heroList, id, point_distance(x, y, other.x + 32, other.y + 32));
    }
}

closestNode = noone;
while (closestNode = noone) {
    targetHero = ds_priority_delete_min(heroList);
	targetDistance = point_distance(x, y, targetHero.x + 32, targetHero.y + 32);

    targetNode = map[# targetHero.gridX, targetHero.gridY];

    for (i = 0; i < ds_list_size(targetNode.neighbors); i++) {
        currentNode = ds_list_find_value(targetNode.neighbors, i);
		distance = point_distance(x, y, currentNode.x + 32, currentNode.y + 32)
        if (currentNode.containing = noone && currentNode.passable && distance < targetDistance) {
            closestNode = currentNode;
        }
    }

    if (ds_priority_size(heroList) <= 0) {
        targetHero = noone;
        monsterState = "idle";
    }
}
ds_priority_destroy(heroList);

if (targetHero != noone) {
    targetNode = closestNode;
    scrAIMove(map[# gridX, gridY], closestNode);
    while (closestNode.distanceScore > move) {
        closestNode = closestNode.parent;
    }
    scrCreatePath(id, closestNode);
    map[# gridX, gridY].containing = noone;

    gridX = closestNode.gridX;
    gridY = closestNode.gridY;

    closestNode.containing = id;

    monsterState = "begin path";
}
scrClearNodes();
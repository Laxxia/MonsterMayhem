var map = global.grid;
heroList = ds_priority_create();
with(oPlayer) {
    if (objectType = combatType.friendly) {
        ds_priority_add(other.heroList, id, point_distance(x, y, other.x + 32, other.y + 32)); //This will be wrong for who is closer on top and bottom and left and right checks
    }
}

closestNode = noone;
while (closestNode = noone) {
    targetHero = ds_priority_delete_min(heroList);

    targetNode = map[# targetHero.gridX, targetHero.gridY];

    for (i = 0; i < ds_list_size(targetNode.neighbors); i++) {
        currentNode = ds_list_find_value(targetNode.neighbors, i);
        if (currentNode.containing = noone && currentNode.passable) {
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
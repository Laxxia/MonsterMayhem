if (woundCount > 0) {
    for (var i = 0; i < 6; i++) {
        var inst = instance_create_depth(attackTarget.x + 32, attackTarget.y + 32, -9999, oBiff)
        inst.direction = irandom(360);
        inst.speed = irandom_range(2, 4);
        inst.scale = choose(2, 3);
        inst.image_speed = .5;
        //if (woundCount == "crit") {
        //    inst.color = c_yellow;
        //}
    }
    //if (woundCount == "crit") {
    //    attackTarget.shake = 8;
    //    attackTarget.shakeMag = 8;
    //} else {
    attackTarget.shake = 4;
    attackTarget.shakeMag = 4;
    //}
    attackTarget.healthPoints--;
    var dmg = instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)
    dmg.text = "-1" //string(other.damage);
    dmg.ground = y;

    //if (woundCount == "crit") {
    //    dmg.font = fCrit;
    //    dmg.text = dmg.text + "!";
    //}
} else {
    with(instance_create_depth(attackTarget.x + 60, attackTarget.y + 4, -9998, oDamageText)) {
        text = "Miss!";
        ground = y;
    }
}
woundCount--;
alarmCount ++;
if(alarmCount < global.weapons[# weaponStats.weaponSpeed, currentWeapon] ){
	alarm[0] = room_speed/2;
} else {playerState = "end attack";}
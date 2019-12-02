/// @description Insert description here
// You can write your code in this editor
if(status != "miss"){
	target.healthPoints -= damage;
	for(var i = 0; i < 6; i++){
		with(instance_create_depth(target.x + 32, target.y + 32, -9999, oBiff)){
			direction = irandom(360);
			speed = irandom_range(2,4);
			scale = choose(2,3);
			image_speed = .5;
			
			if(other.status == "crit"){
				color = c_yellow;
			}
		}
	}
	
	with(instance_create_depth(target.x + 60, target.y + 4, -9998, oDamageText)){
		text = "-" + string(other.damage);
		ground = y;
		
		if(other.status == "crit"){
			font = fCrit;
			text = text + "!";
		}
	}
	if(status == "crit"){
		target.shake = 8;
		target.shakeMag = 8;
	} else {
		target.shake = 4;
		target.shakeMag = 4;
	}
} else {
	with(instance_create_depth(target.x + 60, target.y + 4, -9998, oDamageText)){
		text = "Miss!";
		ground = y;
	}
}

instance_destroy();
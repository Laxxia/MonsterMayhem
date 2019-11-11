var script = argument0;
var mon = argument1;
var atkTarg = noone;

switch(mon){
	case monster.FeyCursedPig:
		switch(script){
			case 0:
				atkTarg = scrClosestTarget();
				break;
			case 1: 
				atkTarg = scrRandomTarget();
				break;
		}
	break;
}

return atkTarg;
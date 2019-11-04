/// @description Insert description here
// You can write your code in this editor
if(grabbed){
	x = mouse_x;
	y = mouse_y;
}

if(global.curPlayer = id){
	image_alpha = .5;
} else {image_alpha = 1;}


switch(playerState){
	case "begin player path":
		path_start(movementPath, pathSpeed, 0, true);
		playerState = "moving";
		global.curPlayer = noone;
		break;
}
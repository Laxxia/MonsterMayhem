/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(visualState = VisualState.inactive){
	text = "Type name here";
	saved = false;
}

if(typing){
	creator.menu_open = true;
	saved = false;
	if(keyboard_check(vk_anykey) and string_length(text) < 20)
	{
	    text = string(keyboard_string);
	}
	if(keyboard_check_pressed(vk_backspace))
	{
	    text = string_delete(text,string_length(text),1);
	    keyboard_string = text;
	}
}

if(keyboard_check_pressed(vk_enter)){
	saved = true;
	typing = false;
	creator.menu_open = false;
	keyboard_string= "";
}

if(saved){
	keyboard_string = "";
	creator.playerName = text;
	creator.playerInfo[0] = text;
	saved = true;
}
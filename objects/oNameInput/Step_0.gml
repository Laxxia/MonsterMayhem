/// @description Insert description here
// You can write your code in this editor
if(typing){
	saved = false;
	if(keyboard_check(vk_anykey) and string_length(text) < 20)
	{
	    text = string(keyboard_string);
		acceptButton.activated = true;
	}
	if(keyboard_check_pressed(vk_backspace))
	{
	    text = string_delete(text,string_length(text),1);
	    keyboard_string = "";
	}
}

if(saved){
	keyboard_string = "";
	creator.playerName = text;
	creator.playerInfo[0] = text;
	saved = true;
}
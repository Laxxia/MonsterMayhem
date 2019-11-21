/// @description Insert description here
// You can write your code in this editor
if(typing){
	if(keyboard_check(vk_anykey) and string_length(text) < 20)
	{
	    text = string(keyboard_string);
	}
	if(keyboard_check_pressed(vk_backspace))
	{
	    text = string_delete(text,string_length(text),1);
	    keyboard_string = "";
	}
	if(keyboard_check_pressed(vk_enter)){
		typing = false;
	}
}
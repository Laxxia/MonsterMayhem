/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (visualState == VisualState.inactive) exit;
draw_self();
draw_set_font(fButton);
draw_text(x+(sprite_width/2 - (string_width(text)/2)), y+(sprite_height/2 - (string_height(text)/2)), text);
draw_set_font(fDefault);
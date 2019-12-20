/// @description Insert description here
// You can write your code in this editor
if (visualState == VisualState.inactive) exit;
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + sprite_width/2, y + sprite_height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
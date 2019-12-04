/// @description Insert description here
// You can write your code in this editor
/// @description Properties

#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)

image_speed=0;

#region Positioning and State Animation Properties
enum VisualState
{
	active,
	deactivating,
	inactive,
	activating
}
visualState = VisualState.inactive;

length=15;
timer=length;
activate_ease=TwerpType.out_back;
deactivate_ease=TwerpType.in_back;
active_pos=[0,0];
inactive_offset=[0,0];
argArray= [];
#endregion

//Update Position
event_user(0);
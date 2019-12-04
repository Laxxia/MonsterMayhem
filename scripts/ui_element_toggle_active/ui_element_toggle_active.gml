/// @arg active
var _active = argument0;

if(_active && visualState != VisualState.inactive)
{
	timer=0;
	visualState = VisualState.deactivating;
}
else if(_active && visualState != VisualState.active)
{
	timer=0;
	visualState = VisualState.activating;
}
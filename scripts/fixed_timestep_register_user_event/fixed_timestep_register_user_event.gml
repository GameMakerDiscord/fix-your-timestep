///@function fixed_timestep_register_user_event
///@description Registers an instance or object type to the fixed update loop. Will execute passed user event on fixed tick.
///@param {Real} object_index|instance
///@param {Real} user_event
var _id = argument0,
	_event = argument1,
	_struct = array_create(EFixedTimestep_Item.Num);
_struct[@ EFixedTimestep_Item.UserEvent] = _event;
_struct[@ EFixedTimestep_Item.Script] = -1;
_struct[@ EFixedTimestep_Item.ID] = _id;

ds_list_add(global._ts_items, _struct);
global._ts_items_size+=1;
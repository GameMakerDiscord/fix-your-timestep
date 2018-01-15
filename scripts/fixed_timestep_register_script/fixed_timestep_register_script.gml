///@function fixed_timestep_register_user_event
///@description Registers an instance or object type to the fixed update loop. Will execute passed script in the scope of instance on fixed tick.
///@param {Real} object_index|instance
///@param {Real} script
var _id = argument0,
	_script = argument1,
	_struct = array_create(EFixedTimestep_Item.Num);
_struct[@ EFixedTimestep_Item.UserEvent] = -1;
_struct[@ EFixedTimestep_Item.Script] = _script;
_struct[@ EFixedTimestep_Item.ID] = _id;

ds_list_add(global._ts_items, _struct);
global._ts_items_size+=1;
///@function fixed_timestep_unregister(instance|object_index
///@description Removes an instance or object_index from the update list. Will return true if successful
///@param {Real} instance|object_index
var _id = argument0,
	_i = 0;

while(_i < ds_list_size(global._ts_items)){
	var _item = global._ts_items[| _i];
	if(_item[EFixedTimestep_Item.ID] == _id){
		ds_list_delete(global._ts_items, _i);
		global._ts_items_size--;
	}else{
		++_i;	
	}
}
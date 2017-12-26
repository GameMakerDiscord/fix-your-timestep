/// @description Removes an instance or object_index from the update list. Will return true if successful
/// @param instance_or_object_index
var _index = ds_list_find_index(global._ts_items,argument0);

if(_index!=-1){
	ds_list_delete(global._ts_items,_index);
	global._ts_items_size-=1;
	return true;
}

return false;

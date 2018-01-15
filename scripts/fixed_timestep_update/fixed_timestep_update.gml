///@function fixed_timestep_update()
///@description Used to overwrite execution order. Only call manually if you have first called `fixed_timestep_disabled(true)` first.
var _next = delta_time/1000000;
var _min = 1/global._ts_fps_min;

if(_next > _min){
	if(global._ts_delta_restored){
		global._ts_delta = _min;
	}
	global._ts_delta_restored = true;
	exit;
}

global._ts_delta_restored = false; 
global._ts_delta = _next;



var _dt = global._ts_delta;
var _dt_max = 1/global._ts_fps;
var _steps_taken = 0;

global._ts_accumulator+=_dt;
global._ts_steps_taken = 0;

while(global._ts_accumulator>=_dt_max){
	global._ts_accumulator-=_dt_max;
	var _i = 0;
	var _items = global._ts_items;
	repeat(global._ts_items_size){
		var _item = _items[| _i];
		if(_item[EFixedTimestep_Item.UserEvent] != -1){
			with _item[EFixedTimestep_Item.ID] event_user(_item[EFixedTimestep_Item.UserEvent])	
		
		}else if(_item[EFixedTimestep_Item.Script] != -1){
			with _item[EFixedTimestep_Item.ID] script_execute(_item[EFixedTimestep_Item.Script]);
		}
		
		++_i;
	}
	++_steps_taken;
}

//Calculate blended alpha
global._ts_render_alpha = global._ts_accumulator/_dt_max;
global._ts_steps_taken = _steps_taken;

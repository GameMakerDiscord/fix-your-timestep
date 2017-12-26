/// @description Updates the timestep and calls the user events for subscribed objects
var _new_time = get_timer();
var _frame_time = _new_time-global._ts_time;
_frame_time/=1000000;

global._ts_time = _new_time;
global._ts_accumulator+=_frame_time;

while(global._ts_accumulator>=global._ts_dt){
	global._ts_accumulator-=global._ts_dt;
	var _i = 0;
	repeat(global._ts_items_size){
		with(ds_list_find_value(global._ts_items,_i)){
			event_user(global._ts_event_index);
		}
		++_i;
	}
}

//Calculate blended alpha
global._ts_render_alpha = global._ts_accumulator/global._ts_dt;
global._ts_render_alpha_calculated = 1.0 - global._ts_render_alpha;

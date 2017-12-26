/// @description Begins the timestep. Call this from any object at any point only once.
/// @param user_event_index (optional - defaults to 0)
global._ts_accumulator = 0;
global._ts_render_alpha = 1;
global._ts_time = current_time;
global._ts_dt = 1/60;
global._ts_event_index = 0;
global._ts_items = ds_list_create();
global._ts_items_size = 0;
global._ts_render_alpha_calculated = 0;

if(argument_count > 0){
	global._ts_event_index = argument[0];
}
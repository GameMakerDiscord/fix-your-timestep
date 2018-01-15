
///@description Begins the timestep. Call this from any object at any point only once.
global._ts_accumulator = 0;
global._ts_render_alpha = 1;
global._ts_items = ds_list_create(); 
global._ts_items_size = 0;
global._ts_delta = delta_time/1000000; 
global._ts_fps_min = 10; 
global._ts_fps = 60;
global._ts_delta_restored = false;
global._ts_steps_taken = 0; 


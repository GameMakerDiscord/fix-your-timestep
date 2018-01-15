room_speed = 60;
fixed_timestep_set_target_fps(60);

fixed_timestep_register_script(Actor1, actor1_fixed_update);
fixed_timestep_register_user_event(Actor2, 0);
room_speed = 60;
instance_create_depth(0, 0, 0, FixedTimestep);

fixed_timestep_register_script(Actor1, actor1_fixed_update);
fixed_timestep_register_user_event(Actor2, 0);
room_speed = 60;
timestep_begin();
timestep_register(obj_test);
timestep_register(obj_test2);

//Please note that I call timestep_register twice here for two very similar objects.
//THIS IS WRONG and simply for demonstration purposes! Use a parent object instead. 
//See the readme for more information.

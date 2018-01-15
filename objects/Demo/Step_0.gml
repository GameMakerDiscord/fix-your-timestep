//For toggeling room speed
if(keyboard_check_pressed(vk_f1)){
	switch(room_speed){
		case 15:
			room_speed = 30;
		break;
		case 30:
			room_speed = 60;
		break;
		case 60:
			room_speed = 120;
		break;
		case 75:
			room_speed = 120;
		break;
		case 120:
			room_speed = 144;
		break;
		case 144:
			room_speed = 15;
		break;
	}
}

if(keyboard_check_pressed(vk_f2)){
	switch(global._ts_fps){
		case 30:
			fixed_timestep_set_target_fps(60);
		break;
		case 60:
			fixed_timestep_set_target_fps(75);
		break;
		case 75:
			fixed_timestep_set_target_fps(120);
		break;
		case 120:
			fixed_timestep_set_target_fps(144);
		break;
		case 144:
			fixed_timestep_set_target_fps(30);
		break;
	}
}


//Overwrite order
if(keyboard_check_pressed(vk_f3)){
	if(global._ts_disabled){
		fixed_timestep_set_disabled(false);	
	}else{
		fixed_timestep_set_disabled(true);	
	}
}


//Allow game to exit
if(keyboard_check_pressed(vk_escape)){
	game_end();
}

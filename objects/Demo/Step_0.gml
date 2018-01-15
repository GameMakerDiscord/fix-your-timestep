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

//Allow game to exit
if(keyboard_check_pressed(vk_escape)){
	game_end();
}

/// @description Get player input

//Get vertical input
dy = keyboard_check_pressed(vk_space);
if(y==sy){
	//Apply force
	vy-=dy * jump_force;
}

/// @description Get player input

//Get horizontal input
dx = keyboard_check(ord("D")) - keyboard_check(ord("A"));

//Get vertical input
dy = keyboard_check_pressed(vk_space);
if(y==sy){
	//Apply force
	vy-=dy * jump_force;
}

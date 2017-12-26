/// @description Physics Step

//Vertical physics
if(y==sy){
	vy-=dy * jump_force;
}

vy+=gravity_force;
y+=vy;

if(y > sy){
	y = sy;
	vy = 0;
}

//Face player
image_xscale = sign(obj_test.x - x);
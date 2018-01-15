/// @description Physics Step

//Vertical physics
vy+=gravity_force;
y+=vy;

if(y > sy){
	y = sy;
	vy = 0;
}

//Face player
image_xscale = sign(Actor1.x - x);
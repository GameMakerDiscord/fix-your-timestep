/// @description Physics Step

//Horizontal physics
vx+= dx * speed_x;
vx = clamp(vx,-speed_xmax,speed_xmax);
x+=vx;
vx*=(y==sy) ? dry_friction : air_friction;

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

//Animation and face direction
if(dx != 0){
	image_xscale = sign(dx);
	sprite_index = spr_walk;
}else{
	sprite_index = spr_idle;
}

//Keep in room bounds
x = clamp(x,0-sprite_width/2,room_width-sprite_width/2);
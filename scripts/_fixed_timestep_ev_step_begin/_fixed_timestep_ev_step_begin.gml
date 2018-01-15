/*
var _next = delta_time/1000000;
var _min = 1/global._ts_fps_min;

if(_next > _min){
	if(global._ts_delta_restored){
		global._ts_delta = _min;
	}
	global._ts_delta_restored = true;
	exit;
}

global._ts_delta_restored = false;
global._ts_delta = _next;



var _padding = 6;
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text(_padding,_padding,
	@"Press S and A to walk around! 
	Press space to jump! 
	Press F1 to toggle room_speed!
	Press Alt + Enter to toggle fullscreen!
	Press Escape to quit the game!
	room_speed: " + string(room_speed)
);

draw_set_halign(fa_right);

draw_text(display_get_gui_width()-_padding,_padding,
	@"Tileset by surt @ http://www.opengameart.org
	Character art provided by http://www.openpixelproject.com
	Special thanks to Glenn Fiedler
	Project by Kyle Askew @net8floz
	"
);



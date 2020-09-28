
// draw the score
draw_set_font(fntScore);
draw_set_colour(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var score_string = string(player_1_score) + " : " + string(player_2_score);

draw_text(683, 20, score_string);

if( win_string != "" ) {
	
	// warning: may cause epilepsy
	//	var r = random(255);
	//	var g = random(255);
	//	var b = random(255);
	//	draw_set_color(make_color_rgb(r, g, b));
	draw_set_color(c_red);

	draw_text(683, 60, win_string + " wins!");
	
	tip_time++;
}

if( tip_time > 2000000 ) {
	var tip_string = "Press R to restart";
	
	if( tip_time % 1000000 < 500000 ) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text(683, 100, tip_string);
}
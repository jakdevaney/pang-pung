if( player_1_score >= win_score ) {
	win_string = "Player 1";
}

if( player_2_score >= win_score ) {
	win_string = "Player 2";
}

if( tip_time > 0 ) {
	tip_time += delta_time;	
}

if( keyboard_check(ord("R")) ) {
	player_1_score = 0;
	player_2_score = 0;
	win_string = "";
	tip_time = 0;
	
	objBall.reset();
}
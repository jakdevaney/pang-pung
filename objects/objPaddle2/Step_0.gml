
// move up and down over and over
if( is_ascending ) {
	if( y > 0 ) {
		y -= y_velocity;	
	} else {
		is_ascending = false;	
	}
} else {
	if( y + sprite_height < 750 ) {
		y += y_velocity;
	} else {
		is_ascending = true;	
	}
}

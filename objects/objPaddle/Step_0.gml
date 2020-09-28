
if( keyboard_check(ord("W")) ) {
	y_velocity -= y_acceleration;
	
	if( y_velocity <= -y_max ) {
		y_velocity = -y_max;	
	}
}

if( keyboard_check(ord("S")) ) {
	y_velocity += y_acceleration;
	
	if( y_velocity >= y_max ) {
		y_velocity = y_max;	
	}
}
	
	// if neither key is pressed slow to 0
	// while slowing if we pass 0 set to 0
	// because we wanted to stop, not accl
	// in the other direction
if( not keyboard_check(ord("W"))
and not keyboard_check(ord("S")) ) {
		
	if( y_velocity > 0 ) {
			
		y_velocity -= y_acceleration;
			
		if( y_velocity < 0 ) {
			y_velocity = 0;
		}
	} else if( y_velocity < 0 ) {
		
		y_velocity += y_acceleration;
		
		if( y_velocity > 0 ) {
			y_velocity = 0;	
		}
	}
		
}

y += y_velocity;
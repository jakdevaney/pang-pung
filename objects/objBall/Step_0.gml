
// if someone has scored lets reset 
var x_center = x + (sprite_width / 2);
if( x_center < objPaddle.x + objPaddle.sprite_width ) {
	reset(objPaddle2);
} else if( x_center > objPaddle2.x ) {
	reset(objPaddle);
}

// get the next set of x and y , then we will see 
// if they are ok, or if theyll be inside something
var x_move = lengthdir_x(current_speed, xy_direction);
var y_move = lengthdir_y(current_speed, xy_direction);
var new_x = x + x_move;
var new_y = y + y_move;

// if hit roof or floor
if( new_y < 40 ) {
	if( new_x < x ) {
		xy_direction += 90;	
	} else {
		xy_direction -= 90;	
	}
} else if( new_y > 740 ) {
	if( new_x > x ) {
		xy_direction += 90;	
	} else {
		xy_direction -= 90;	
	}
}

// if hit paddle
if( collision_rectangle(new_x, new_y, new_x + sprite_width, new_y + sprite_height, objPaddle, false, true)
or  collision_rectangle(new_x, new_y, new_x + sprite_width, new_y + sprite_height, objPaddle2, false, true) ) {
	
	var x_bit = 1;
	if( new_x > x ) {
		x_bit = -1;
	}
	
	if( new_y > y ) {
		xy_direction += 90 * x_bit;
	} else {
		xy_direction -= 90 * x_bit;
	}
}

// want a degree between 0 and 360
// so modulus
xy_direction %= 360;

// get the amount of x and y , to move our angle + speed
x_move = lengthdir_x(current_speed, xy_direction);
y_move = lengthdir_y(current_speed, xy_direction);

// do the move
x += x_move;
y += y_move;

function reset(scorer) {
		x = 672; y = 384;
		var random_45 = 45 + ( irandom(2) + 1 ) * 90;
		xy_direction = random_45;
		
		if( scorer == objPaddle ) {
			objReferee.player_1_score++;
		} else if( scorer = objPaddle2 ) {
			objReferee.player_2_score++;	
		}
}
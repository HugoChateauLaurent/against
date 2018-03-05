/// @function set_active(id, activate)
/// @description set the activation of the object
/// @param {real} id The unique instance ID value of the object
/// @param {boolean} activate

if(argument1) {
	with(argument0) {
		active = true;
		
		if(object_index == oPiece) {
			show_debug_message("piece");
			image_blend = global.active_piece_color;
		} else if(object_index == oSquare) {
			image_blend = global.active_square_color;
		}
		
	}
} else {
	with(argument0) {
		active = false;
		
		if(object_index == oPiece) {
			if(!color) {
				image_blend = global.black_piece_color;
			} else {
				image_blend = global.white_piece_color;
			}
		} else if(object_index == oSquare) {
			if(!color) {
				image_blend = global.black_square_color;
			} else {
				image_blend = global.white_square_color;
			}
		}
	}
}


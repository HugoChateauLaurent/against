/// @function smart_clone(object, type)
/// @description clone the given object
/// @param object
/// @param type

var object = argument0;
var type = argument1;
var new_object = noone;
if(type == "oBoard") {
	new_object = instance_create_depth(0,0,0,oBoard);
	with(new_object) {
		visible = false;
		against_bot = 0;
		nb_squares = object.nb_squares;
		rangee = object.rangee;
		nb_pieces = object.nb_pieces;
		squares = noone;
		player = object.player;
		scores = object.scores;
		status = object.status;
		paths = noone;
		
		var square = noone;
		var tmp_piece = noone;
		
		for(var i = 0; i<nb_squares; i++) {
			for(var j = 0; j<nb_squares; j++) {
				square = instance_create_depth(0,0,0,oSquare);
				with (square) {
					visible = false;
					board = new_object;
					color = object.squares[i,j].color; 
					image_blend = object.squares[i,j].image_blend;
					coordX = i;
					coordY = j;
					
					tmp_piece = object.squares[i,j].piece;
					if(tmp_piece != noone) {
						piece = instance_create_depth(0,0,0,oPiece) 
						with (piece)	{
							visible = false;
							board = new_object;
							color = tmp_piece.color;
							coordX = i;
							coordY = j;
							image_blend = tmp_piece.image_blend;
						}
					}
					else piece = noone;
				
					active = false;
				}
				
				squares[i,j] = square;
			}
		}
	}
}

return new_object;
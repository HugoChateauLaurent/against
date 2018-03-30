/// @function ch_bot_moves(board, player)
/// @description set the evaluation score of the board according to the given player
/// @param {real} board id

var board = argument0;
var actions = ds_list_create();

var i;
var j;
var cpt = 0;
if(board.player) {
	i=board.nb_squares-1;
	
	while(i>=0 && cpt<board.nb_pieces[board.player]) {
		j=0;
		while(j<board.nb_squares && cpt<board.nb_pieces[board.player]) {
			if(board.squares[j,i].piece != noone && board.squares[j,i].piece.color = board.player) {
				
				cpt++;
			}
			
			j++;
		}
		
		i--;	
	}
} else {
	i=0;
	
	while(i<board.nb_squares && cpt<board.nb_pieces[board.player]) {
		j=0;
		while(j<board.nb_squares && cpt<board.nb_pieces[board.player]) {
			if(board.squares[j,i].piece != noone && board.squares[j,i].piece.color = board.player) {
				show_debug_message("trouvé");
				highlight_board(board, noone, true); // reset highlight
				set_active(board.squares[j,i].piece, true, board);
				var paths = possible_move(board, board.squares[j,i].piece);
				with(board) {
					self.paths = paths;
					var bound = array_height_2d(paths);
					for(var k = 0;k < bound; k++) {
						set_active(paths[k, array_length_2d(paths, k)-1], true, board); //activate destination
			
						var action = instance_create_depth(0,0,0,oChAction);
						ds_list_add(actions, action);
						with(action){
							visible = false;
							piece = board.squares[j,i].piece
							destination = paths[k, array_length_2d(paths, k)-1];								
						}
								
					}
				}
				
				cpt++;
			}
			
			j++;
		}
		
		i++;	
	}
}

return actions;
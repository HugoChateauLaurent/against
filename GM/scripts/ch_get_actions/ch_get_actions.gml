/// @function ch_get_actions(board)
/// @description return all possible actions
/// @param {real} board id

var board = argument0;
var actions = ds_list_create();

var i;
var j;
var cpt = 0;
var nb_actions = 0;
board.paths = noone;
if(board.player) {
	i=board.nb_squares-1;
	
	while(i>=0 && cpt<board.nb_pieces[board.player]) {
		j=0;
		while(j<board.nb_squares && cpt<board.nb_pieces[board.player]) {
			if(board.squares[j,i].piece != noone && board.squares[j,i].piece.color == board.player) {
				highlight_board(board, noone, true); // reset highlight
				set_active(board.squares[j,i].piece, true, board);
				board.paths = concatenate_array_2d(board.paths,possible_move(board, board.squares[j,i].piece));
				with(board) {
					var bound = array_height_2d(self.paths);
					for(var k = nb_actions;k < bound; k++) {
						set_active(paths[k, array_length_2d(paths, k)-1], true, board); //activate destination
			
						var action = instance_create_depth(0,0,0,oChAction);
						ds_list_add(actions, action);
						with(action){
							visible = false;
							piece = board.squares[j,i].piece;
							destination = board.paths[k, array_length_2d(board.paths, k)-1];								
						}
						
						nb_actions++;
								
					}
				}
				
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
			if(board.squares[j,i].piece != noone && board.squares[j,i].piece.color == board.player) {
				highlight_board(board, noone, true); // reset highlight
				set_active(board.squares[j,i].piece, true, board);
				board.paths = concatenate_array_2d(board.paths,possible_move(board, board.squares[j,i].piece));
				with(board) {
					var bound = array_height_2d(self.paths);
					for(var k = nb_actions;k < bound; k++) {
						set_active(paths[k, array_length_2d(paths, k)-1], true, board); //activate destination
			
						var action = instance_create_depth(0,0,0,oChAction);
						ds_list_add(actions, action);
						with(action){
							visible = false;
							piece = board.squares[j,i].piece;
							destination = board.paths[k, array_length_2d(board.paths, k)-1];								
						}
						
						nb_actions++;
								
					}
				}
				
				cpt++;
			}
			
			j++;
		}
		
		i++;	
	}
}

var can_capture = false;
var bound = ds_list_size(actions);
var i = 0;
var action = noone;
while(i<bound && !can_capture) {
	action = ds_list_find_value(actions, i);
	if(abs(action.destination.coordX - action.piece.coordX)+abs(action.destination.coordY - action.piece.coordY) > 2) {
		can_capture = true;	
	}
	
	i++;
}

if(can_capture) {
	i=0;
	while(i<bound) {
		action = ds_list_find_value(actions, i);
		if(abs(action.destination.coordX - action.piece.coordX)+abs(action.destination.coordY - action.piece.coordY) <= 2) {
			ds_list_delete(actions, i);
			board.paths = remove_array_2d(board.paths, i, -1);
		
			bound--;
			i--;
		}
	
		i++;
	}
}



return actions;

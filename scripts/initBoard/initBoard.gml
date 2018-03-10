/// @function init_board(board)
/// @description 
/// @param {real} board id

with(argument0) {
	nb_squares = 6; //nombre de cases
	size = 256 * global.square_size; // taille des cases
	pos_x = 200; //position grille
	pos_y = 200; //position grille
	rangee = 2; //rangées de pions

	var tmp_piece;
	var id_board = id; //on stocke l'idée de l'instance dans une variable locale pour y accéder dans les with

	//crée les cases
	for (var i = 0; i < nb_squares; ++i) {
	    for (var j = 0;j<nb_squares;++j){
			if((i+j) mod 2 !=0){ //une case sur 2, alternance des couleurs
				square = instance_create_depth(j*size+pos_x, i*size+pos_y,3, oSquare); //crée case
				with(square) {
					board = id_board; //on stocke l'id du plateau dans l'objet
				
					color = false; //variable de l'objet à 0 : noir
					image_blend = global.black_square_color; //on met la case en noir
				
					coordX = j;
					coordY = i;
				
					piece = noone;
				
					active = false;
				}
				squares[j,i] = square;
			
			
			} else {
				square = instance_create_depth(j*size+pos_x, i*size+pos_y,3, oSquare); //crée case
				with(square) {
					board = id_board; //on stocke l'id du plateau dans l'objet
				
					color = true; //variable de l'objet à 1 : blanc
					image_blend = global.white_square_color; //on met la case en blanc
				
					coordX = j;
					coordY = i;
				
					piece = noone;
				
					active = false;
				}
				squares[j,i] = square;
			}
		
		}
	}


	//crée les pièces noires
	for(var i=0;i<rangee;++i){ 
		for(var j=0;j<nb_squares;++j){
			if(squares[j,i].color==0){ // si case noire
				tmp_piece = instance_create_depth(squares[j,i].x, squares[j,i].y,2, oPiece); //ajoute pion
				with(tmp_piece) {
					board = id_board; //on stocke l'id du plateau dans l'objet
				
					color = false; //black	
					image_blend = global.black_piece_color; //on met la pièce en noir
				
					coordX = j;
					coordY = i;
				}
			
				with(squares[j,i]) {
					piece = tmp_piece;
				}
			}
		
		}
	}

	//crée les pièces blanches
	for(var i=nb_squares-1;i>=nb_squares-2;--i){
		for(var j=0;j<nb_squares;++j){
			if(squares[j,i].color==0){// si case noire
				tmp_piece = instance_create_depth(squares[j,i].x, squares[j,i].y,2, oPiece); //ajoute pion
				with(tmp_piece) {
					board = id_board; //on stocke l'id du plateau dans l'objet
				
					color = true; //white
					image_blend = global.white_piece_color; //on met la pièce en blanc
				
					coordX = j;
					coordY = i;
				}
			
				with(squares[j,i]) {
					piece = tmp_piece;
				}
			}
		
		}
	}



	player = true; //it's player 0's turn
	active_piece = noone;
	scores[0] = 0;
	scores[1] = 0;
	
}




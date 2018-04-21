/// @function sgame_dialogue()
/// @description return a box with text
show_debug_message("on est dans le sgame dialogue");
show_debug_message("partie avec jeu " + string(global.part_with_game));
show_debug_message("partie avec text " + string(global.part_with_text));

if(global.part_with_game){
	show_debug_message("on est dans la condition");
	show_debug_message(string(global.id_replique));
	text_or_not = false;
	switch(global.id_replique){
		//Room3 : matches aigainst a random player
		case 100 : global.dialog_box.dialog_text = " Goal : do not take the last match \n At each turn you can remove between 1 and 3 matches"; text_or_not = true; break;
		case 1 : if (global.id_room == 3){
			global.dialog_box.dialog_text = " Goal : do not take the last match \n At each turn you can remove between 1 and 3 matches \n Bob : It's up to you to play, you start!"; text_or_not = true; 
		}else if(global.id_room == 6){
			global.dialog_box.dialog_text = " Bob : This time I'm sure to win!, you start! \n Goal : do not take the last match \n At each turn you can remove between 1 and 3 matches"; text_or_not = true;
		}break;
		case 2 : global.dialog_box.dialog_text = "Bob : Well played"; text_or_not = true; break;
		case 3 : global.dialog_box.dialog_text = "Bob : Oh... We're getting closer to the end..."; text_or_not = true; break;
		case 4 : global.dialog_box.dialog_text = "Bob : I won ! Isn't cool ?"; text_or_not = true; break;
		case 5 : global.dialog_box.dialog_text = "Bob : Damn, I concede that you're strong, well played !"; text_or_not = true; break;
		
		//Room5 :  wining solution exeplanations
		case 15 : global.dialog_box.dialog_text = "Bob : To understand the winning solution we will look at the different possible scenarios with a smaller version of the board with 5 matches. To start try to take 1 match."; text_or_not = true; break;
		case 16 : global.dialog_box.dialog_text = "Bob : This time try to take 2 matches."; text_or_not = true; break;
		case 17 : global.dialog_box.dialog_text = "Bob : This is the last case, try to take 3 matches at a time."; text_or_not = true; break;	
		case 18 : global.dialog_box.dialog_text = "Bob : If you take 1 match I can force you to lose by taking 3 matches. Please take the last match to continue..."; text_or_not = true; break;	
		case 19 : global.dialog_box.dialog_text = "Bob : If you take 2 match I can force you to lose by taking 2 matches."; text_or_not = true; break;	
		case 20 : global.dialog_box.dialog_text = "Bob : Now you understand that I can win by taking only one match!"; text_or_not = true; break;	
		case 21 : global.dialog_box.dialog_text = "Bob : You just saw the different ways to win when there are 5 matches left on the board. The winning strategy in this game is pretty simple, you have to make sure that your opponent start his turn with 1 + a multiple of 4 (for exemple 5, 9, 13, 17 etc..). In that way you will be able to adapt depending of his choice as shown just earlier."; text_or_not = true; break;	
		
		//Room  Checkers
		case 300: global.dialog_box.dialog_text = " Goal : At the end of the game your number of points have to be higher than your opponents. \n 1 eaten pawn = 1 points \n 1 pawn on the other side of the board = 5 points"; text_or_not = true; break;	
		
		//Permet de changer de room
		default : text_or_not = false; global.mask.timer = 100; global.mask.fading = true; break;
	}
	// Si on doit afficher du texte (si ce n'est pas une transition)
	if (text_or_not and global.id_replique > 0) sText(global.dialog_box);
}
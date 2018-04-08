/// @function sgame_dialogue()
/// @description return a box with text
if(global.part_with_game){
	
	show_debug_message(string(global.id_replique));
	switch(global.id_replique){
	
		//Room3 : introduction avec l'usine et Bob
		case 1 : dialog_text = "Bob : It's up to you to play, you start!"; text_or_not = true; break;
		case 2 : dialog_text = "Bob : Well played"; text_or_not = true; break;
		case 3 : dialog_text = "Factory : See ? hohoho ! To be honest, a robot without intelligence is meaningless. What would you like to do in life ?"; text_or_not = true; break;
		case 4 : dialog_text = "Bob : Um... I like games...?"; text_or_not = true; break;
		case 5 : dialog_text = "Factory : Games ? Hohoho ! Well Bobby, you need to travel the world and learn some algorithms !"; text_or_not = true; break;
		case 6 : dialog_text = "Bob : Algorithms ? Um, okay...?"; text_or_not = true; break;
	
		//Room2 : Bob trouve le jeu des allumettes et joue avec l'utilisateur
		case 8 : dialog_text = "Bob : Oh ! What is it... it looks like a game..."; text_or_not = true; break;
		case 9 : dialog_text = "Bob : Hey ! Hello you ! How long have you been here? I didn’t see you. Are you here to teach me some algorithms ?"; text_or_not = true; break;
		case 10 : dialog_text = "Bob : No... You look ignorant, like me... But, you look nice and I need to find somebody to try this game ! Um... You up for this ? Let's go !"; text_or_not = true; break;
	
		//Room3 : Bob (random_looser) vs User 
	
		
	
		//Permet de changer de room
		default : text_or_not = false; global.mask.timer = 100; global.mask.fading = true; break;
	}
	// Si on doit afficher du texte (si ce n'est pas une transition)
	if (text_or_not and global.id_replique > 0) sText(global.dialog_box);
}
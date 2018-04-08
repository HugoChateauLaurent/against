/// @function sgame_dialogue()
/// @description return a box with text
if(global.part_with_game){
	
	show_debug_message(string(global.id_replique));
	switch(global.id_replique){
	
		//Room3 : introduction avec l'usine et Bob
		case 1 : dialog_text = "Bob : It's up to you to play, you start!"; text_or_not = true; break;
		case 2 : dialog_text = "Bob : Well played"; text_or_not = true; break;
		case 3 : dialog_text = "Bob : Oh... We are getting closer to the end..."; text_or_not = true; break;
		
	
		//Permet de changer de room
		default : text_or_not = false; global.mask.timer = 100; global.mask.fading = true; break;
	}
	// Si on doit afficher du texte (si ce n'est pas une transition)
	if (text_or_not and global.id_replique > 0) sText(global.dialog_box);
}
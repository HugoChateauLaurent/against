/// @function sgame_dialogue()
/// @description return a box with text
show_debug_message("on est dans le sgame dialogue");
show_debug_message("partie avec jeu " + string(global.part_with_game));
show_debug_message("partie avec text " + string(global.part_with_text));

if(global.part_with_game){
	show_debug_message("on est dans la condition");
	show_debug_message(string(global.id_replique));
	switch(global.id_replique){
	
		//Room3 : introduction avec l'usine et Bob
		case 100 : global.dialog_box.dialog_text = " "; text_or_not = true; break;
		case 1 : global.dialog_box.dialog_text = "Bob : It's up to you to play, you start!"; text_or_not = true; break;
		case 2 : global.dialog_box.dialog_text = "Bob : Well played"; text_or_not = true; break;
		case 3 : global.dialog_box.dialog_text = "Bob : Damn, I concede that you're strong, well played !"; text_or_not = true; break;
		case 4 : global.dialog_box.dialog_text = "Bob : I won ! Isn't cool ?"; text_or_not = true; break;
		case 5 : global.dialog_box.dialog_text = "Bob : Damn, I concede that you're strong, well played !"; text_or_not = true; break;
		
	
		//Permet de changer de room
		default : text_or_not = false; global.mask.timer = 100; global.mask.fading = true; break;
	}
	// Si on doit afficher du texte (si ce n'est pas une transition)
	if (text_or_not and global.id_replique > 0) sText(global.dialog_box);
}
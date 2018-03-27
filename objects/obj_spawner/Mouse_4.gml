/// @description Insert description here
// You can write your code in this editor
if (id_replique < 3){
	switch(id_replique) {
		case 0 : dialog_text = "Bob : Oh ! What is it.. it looks like a game…"; break;
		case 1 : dialog_text = "Bob : Hey ! Hello you ! How long have you been here? I didn’t see you. Are you here to teach me some algorithms ?"; break;
		default : dialog_text = "Bob : No… You look ignorant, like me… But, you look nice and I need to find somebody to try this game ! Um… You up for this ? Let’s go !"; break;
	}
	id_replique++;
	sText(id);
} else {
	id_replique++;
	room_goto_next();	
}

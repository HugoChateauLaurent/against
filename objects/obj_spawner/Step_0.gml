/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left) && global.id_replique < 4){
	switch(global.id_replique) {
		case 0 : global.dialogText = "Bob : Oh ! What is it.. it looks like a game…"; break;
		case 1 : global.dialogText = "Bob : Hey ! Hello you ! How long have you been here? I didn’t see you. Are you here to teach me some algorithms ?"; break;
		case 2 : global.dialogText = "Bob : No… You look ignorant, like me… But, you look nice and I need to find somebody to try this game ! Um… You up for this ? Let’s go !"; break;
		default : global.dialogText = "next";
	}
	global.id_replique++;
	sText();
}


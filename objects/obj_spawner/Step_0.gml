/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_released(mb_left) && global.id_replique < 4){
	var str;
	switch(global.id_replique) {
		case 0 : str = "Oh ! What is it.. it looks like a game…"; break;
		case 1 : str = "Hey ! Hello you ! How long have you been here? I didn’t see you. Are you here to teach me some algorithms ?"; break;
		case 2 : str = "No… You look ignorant, like me… But, you look nice and I need to find somebody to try this game ! Um… You up for this ? Let’s go !"; break;
		default : str = "next";
	}
	global.id_replique++;
	scr_text(str, 1, mouse_x, mouse_y);
}


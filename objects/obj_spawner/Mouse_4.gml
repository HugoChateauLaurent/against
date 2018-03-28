/// @description Insert description here
// You can write your code in this editor
if (global.id_replique < 6){
	switch(global.id_replique){
		case 0 : dialog_text = "L'usine : Hi little robot, welcome to the world ! You just got out of the robot factory. Basically, you are an empty shell, you are just capable of basic communication."; break;
		case 1 : dialog_text = "Bob : Um ..."; break;
		case 2 : dialog_text = "L'usine : See ? hohoho ! To be honest, a robot without intelligence is meaningless. What would you like to do in life ?"; break;
		case 3 : dialog_text = "Bob : Um... I like games...?"; break;
		case 4 : dialog_text = "L'usine : Games ? hohoho ! Well Bobby, you need to travel the world and learn some algorithms !"; break;
		default : dialog_text = "Bob : Algorithms ? Um, okay...?"; break;
	}
	global.id_replique++;
	sText(id);
} else if (global.id_replique > 6 and global.id_replique < 10){
	switch(global.id_replique) {
		case 7 : dialog_text = "Bob : Oh ! What is it... it looks like a game..."; break;
		case 8 : dialog_text = "Bob : Hey ! Hello you ! How long have you been here? I didn’t see you. Are you here to teach me some algorithms ?"; break;
		default : dialog_text = "Bob : No... You look ignorant, like me... But, you look nice and I need to find somebody to try this game ! Um... You up for this ? Let's go !"; break;
	}
	global.id_replique++;
	sText(id);
} else if (global.id_replique > 10 and global.id_replique < 21) {
	switch(global.id_replique){
		case 11 : dialog_text = "Bob : Um... It's not easy... To be honest, I just played randomly"; break;
		case 12 : dialog_text = "Wendy Simon : Hi Hi ! I saw you playing and it wasn't really good... even a bit painful, y'know."; break;
		case 13 : dialog_text = "Bob : Hi, who are you ? And why do you say that ?"; break;
		case 14 : dialog_text = "W. S. : Sorry, I forgot to introduce myself ! I'm Wendy Simon and I've been playing this game for a looooong time with my grandfather y'know."; break;
		case 15 : dialog_text = "W. S. : Well, your moves were complete garbage ! You didn't mind your opponent's moves, right ? Y'know there is an unbreakable solution, a winning solution ?"; break;
		case 16 : dialog_text = "Bob : Huh ? What's a winning solution ?"; break;
		case 17 : dialog_text = "W. S. : Sit down, young Padawan, I'll tell you everything I know..."; break;
		case 18 : dialog_text = "W. S. : A winning solution is a sure strategy to win a game or at worst, not to lose, y'know."; break;
		case 19 : dialog_text = "W. S. : In some games, like in the game of matches, all the possibilities of evolution are know so if you are in a winning situation you can apply a set of rules and get the victory ! "; break;
		default : dialog_text = "W. S. : So the first step is to reach a winning situation, y'know, and after, apply the set of winning rules !"; break;
	}
	global.id_replique++;
	sText(id);
} else {
	global.id_replique++;
	global.mask.timer = 100;
	global.mask.fading = true;
}


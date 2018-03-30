/// @description Insert description here
// Mouvement
spd = 2;
MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);


// Move Player
if(MOVELEFT) {
	x -= spd;
} if(MOVERIGHT) {
	x += spd;	
} if(MOVEUP) {
	y -= spd;	
} if(MOVEDOWN) {
	y += spd; 	
}

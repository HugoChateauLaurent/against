/// @description Insert description here
// Mouvement

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

// Size player
if (y < 25) {
	image_xscale = 0.02; image_yscale = 0.02;
} else if (y < 50) {
	image_xscale = 0.03; image_yscale = 0.03;
} else if (y < 75) {
	image_xscale = 0.04; image_yscale = 0.04;
} else if (y < 100) {
	image_xscale = 0.05; image_yscale = 0.05;
} else if (y < 125) {
	image_xscale = 0.06; image_yscale = 0.06;
} else if (y < 150) {
	image_xscale = 0.07; image_yscale = 0.07;
} else if (y < 175){
	image_xscale = 0.08; image_yscale = 0.08;
} else if (y < 200) {
	image_xscale = 0.09; image_yscale = 0.09;
} else if (y < 225) {
	image_xscale = 0.1; image_yscale = 0.1;
} else if (y < 250) {
	image_xscale = 0.11; image_yscale = 0.11;
} else if (y < 275) {
	image_xscale = 0.12; image_yscale = 0.12;
} else if (y < 300) {
	image_xscale = 0.13; image_yscale = 0.13;
} else if (y < 325) {
	image_xscale = 0.14; image_yscale = 0.14;
} else if (y < 350) {
	image_xscale = 0.15; image_yscale = 0.15;
} else if (y < 375) {
	image_xscale = 0.16; image_yscale = 0.16;
} else if (y < 400){
	image_xscale = 0.17; image_yscale = 0.17;
} else if (y < 425) {
	image_xscale = 0.18; image_yscale = 0.18;
} else if (y < 450) {
	image_xscale = 0.19; image_yscale = 0.19;
} else if (y < 475) {
	image_xscale = 0.2; image_yscale = 0.2;
} else if (y < 500) {
	image_xscale = 0.21; image_yscale = 0.21;
} else if (y < 525) {
	image_xscale = 0.22; image_yscale = 0.22;
} else if (y < 550) {
	image_xscale = 0.23; image_yscale = 0.23;
} else if (y < 575){
	image_xscale = 0.24; image_yscale = 0.24;
} else if (y < 600) {
	image_xscale = 0.25; image_yscale = 0.25;
} else if (y < 625) {
	image_xscale = 0.26; image_yscale = 0.26;
} else if (y < 650) {
	image_xscale = 0.27; image_yscale = 0.27;
} else if (y < 675) {
	image_xscale = 0.28; image_yscale = 0.28;
} else if (y < 700) {
	image_xscale = 0.29; image_yscale = 0.29;
} else if (y < 725) {
	image_xscale = 0.3; image_yscale = 0.3;
} else if (y < 750) {
	image_xscale = 0.31; image_yscale = 0.31;
} else if (y < 775) {
	image_xscale = 0.32; image_yscale = 0.32;
}

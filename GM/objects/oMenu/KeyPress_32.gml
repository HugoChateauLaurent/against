/// @description Insert description here
// You can write your code in this editor

if(sizee==0) {
	window_set_size(1600,900);
	sizee++;
	global.window_size = 1600;
} else if sizee == 1 {
	sizee++;	
	window_set_size(1920,1080);
	global.window_size = 1920;
} else if sizee == 2 {
	sizee = 0;	
	window_set_size(1366,768);
	global.window_size = 1366;
}
window_set_fullscreen(true);
window_set_fullscreen(false);
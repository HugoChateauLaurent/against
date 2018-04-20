/// @description Insert description here
// You can write your code in this editor
if(sizee==0) {
	window_set_size(1600,900);
	sizee++;
} else if sizee == 1 {
	sizee++;	
	window_set_size(1920,1080);
} else if sizee == 2 {
	sizee = 0;	
	window_set_size(1366,768);
}
window_set_fullscreen(true);
window_set_fullscreen(false);
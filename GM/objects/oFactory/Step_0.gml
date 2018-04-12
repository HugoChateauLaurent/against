/// @description Insert description here
// You can write your code in this editor
// This sets it up so that the camera is exactly in the middle of the screen at all times, regardless of zoom.
view_xview[0] = x - view_wview / 2
view_yview[0] = y - view_hview / 2
if(active) {
	if(on) {		
		if(image_alpha < 1) {
			image_alpha += step;	
		} else on = false;
	} else {
		if(image_alpha > 0.55) {
			image_alpha -= step;
		} else on = true;
	}
} else image_alpha = 1;
/// @description Insert description here
// You can write your code in this editor
if(!(image_xscale < objectif + step && image_xscale > objectif - step)) {
	if(image_xscale > objectif) {
		image_xscale *= 1-step;
		image_yscale *= 1-step;
	} else {
		image_xscale *= 1+step;
		image_yscale *= 1+step;
	}
}

if(dos) {
	if(image_index<2) {
		image_speed = 0;
		
		if(image_xscale >0) {
			image_xscale *= -1;
			objectif *=-1;
		}
	}
	
} else {
	if(image_index>1 && image_index<54) {
		image_speed = 1;
	} else {
		image_speed = 10;
	}
	if(image_xscale <0) {
		image_xscale *= -1;
		objectif *=-1;
	}
}
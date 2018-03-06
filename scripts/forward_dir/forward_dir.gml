/// @function forward_dir(dir, color, nb_dirs)
/// @description return the 3 forward direction in an array
/// @param {real} dir the current directin
/// @param {real} color : if != noone, returns the two straight forward directions

var dir = argument0;
var color = argument1;
var nb_dirs = argument2;
var index = 0;
var dirs;

if(nb_dirs == 2) {
	if(color) {
		dirs[0] = -2;
		dirs[1] = 1;
	}
	else {
		dirs[0] = 2;
		dirs[1] = -1;
	}
} else if(nb_dirs == 3) {
	for(var cpt = -2;cpt<=2;cpt++) {
		if(cpt != 0 && cpt != -dir) {
			dirs[index] = cpt;		
			index++;
		}
	}
} else {
	dirs[0] = dir;	
}

return dirs;

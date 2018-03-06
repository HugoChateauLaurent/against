/// @function forward_dir(dir, color)
/// @description return the 3 forward direction in an array
/// @param {real} dir the current directin
/// @param {real} color : if != noone, returns the two straight forward directions

var dir = argument0;
var color = argument1;
var index = 0;
var dirs;

if(dir == noone) {
	if(color) {
		dirs[0] = -2;
		dirs[1] = 1;
	}
	else {
		dirs[0] = 2;
		dirs[1] = -1;
	}
} else {
	for(var cpt = -2;cpt<=2;cpt++) {
		if(cpt != 0 && cpt != -dir) {
			dirs[index] = cpt;		
			index++;
		}
	}
}

return dirs;

/// @function forward_dir(dir, nb_dirs)
/// @description return the 3 forward direction in an array
/// @param {real} dir the current direction
/// @param {real} number of wanted directions

var dir = argument0;
var nb_dirs = argument1;
var index = 0;
var dirs;

if(nb_dirs == 4) {
	dirs[0] = -2;
	dirs[1] = 1;
	dirs[2] = 2;
	dirs[3] = -1;
	
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

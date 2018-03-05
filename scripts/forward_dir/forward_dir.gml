/// @function forward_dir(dir)
/// @description return the 3 forward direction in an array
/// @param {real} dir the current directin

var dir = argument0;
var index = 0;
var dirs;

for(var cpt = -2;cpt<=2;cpt++) {
	if(cpt != 0 && cpt != -dir) {
		dirs[index] = cpt;		
		index++;
	}
}

if(array_length_1d(dirs) != 3) {
	show_debug_message("ERROR : more than 3 directions")	
}

return dirs;

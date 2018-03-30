/// @function neigh_coord(coordX, coordY, dir)
/// @description return the coordinates of the neighbor position in the given direction
/// @param {real} coordX
/// @param {real} coordY
/// @param {real} dir

var coords;
coords[0] = argument0;
coords[1] = argument1;
var dir = argument2;

if(dir == -2){
	coords[0] -= 1;
	coords[1] -= 1;
	
} else if(dir == -1){
	coords[0] -= 1;
	coords[1] += 1;
	
	
}  else if(dir == 1){
	coords[0] += 1;
	coords[1] -= 1;
	
	
}  else if(dir == 2){
	coords[0] += 1;
	coords[1] += 1;
	
	
} else {
	show_debug_message("ERROR : invalid direction");	
}

return coords;

/// @function remove(arr, index)
/// @description return an array containing the elements of the given array except the element at given index
/// @param {real} arr
/// @param {real} index

arr = argument0;
var index = argument1;
var new = noone;
var nb_elts = 0;

for(var j = 0;j<array_length_1d(arr);j++) {
	if(j!=index){
		new[nb_elts] = arr[j];
		nb_elts+=1;
	}
		
}

return new;
/// @function extract_destinations(board)
/// @description return an array containing all destinations
/// @param {oPath[]} paths

var board = argument0;
var destinations = noone;
var destination = noone;
var index = 0;
var toRemove = noone;
var indexRemove = 0;

for(var i = 0; i<array_length_1d(board.paths); i++) {
	show_debug_message(i);
	destination = board.paths[i].visited[array_length_1d(board.paths[i].visited)-1];
	if(destination.piece == noone) { // if the destination is not occupied
		show_debug_message("not occupied");
		destinations[index] = destination;
		index+=1;
	} else {
		toRemove[indexRemove] = i;
		
		indexRemove += 1;
	}
}

for(var i = 0; i<array_length_1d(toRemove); i++) {
	board.paths = remove(board.paths, toRemove[i]);
}

return destinations;

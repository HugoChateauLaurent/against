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

/// @function extract_best_paths(paths)
/// @description return an array containing all destinations
/// @param {real} paths

var paths = argument0;
var toRemove = noone;
show_debug_message(paths);

for(var i = 0; i<array_height_2d(paths); i++){	
	for(var j = i+1; j<array_height_2d(paths); j++) {
		var overlapping = overlap(array_2d_to_1d(paths, i), array_2d_to_1d(paths, j));
		show_debug_message("overlapping "+string(overlapping));
		if(overlapping == 0) {
			if(!contains(toRemove, i)){
				toRemove[array_length_1d(toRemove)] = i;
			}
		} else if (overlapping == 1) {
			if(!contains(toRemove, j)){
				toRemove[array_length_1d(toRemove)] = j;
			}
		}
	}
}
toRemove = sort(toRemove); //sort the indices array
show_debug_message(toRemove);
for(var i = array_length_1d(toRemove) - 1; i >= 0; i--) {
	paths = remove_array_2d(paths, toRemove[i], -1);
}

show_debug_message(paths);



return paths;
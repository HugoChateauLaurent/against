/// @function extract_best_paths(paths)
/// @description return an array containing all destinations
/// @param {real} paths

var paths = argument0;
var toRemove = noone;


show_debug_message(paths);
for(var i = 0; i<array_height_2d(paths); i++){	
	if(paths[i, array_length_2d(paths, i)-1].piece != noone) {
		paths = remove_array_2d(paths, i, -1);
		i-=1;
	}
}

var bound = array_height_2d(paths);
var must_eat = bound > 2;
for(var i = 0; i<bound; i++){	
	if(must_eat && array_length_2d(paths, i) < 2) {
		toRemove[array_length_1d(toRemove)] = i;
	}
	else {
		for(var j = i+1; j<array_height_2d(paths); j++) {
			var overlapping = overlap(array_2d_to_1d(paths, i), array_2d_to_1d(paths, j));
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
}
toRemove = sort(toRemove); //sort the indices array
for(var i = array_length_1d(toRemove) - 1; i >= 0; i--) {
	paths = remove_array_2d(paths, toRemove[i], -1);
}



return paths;
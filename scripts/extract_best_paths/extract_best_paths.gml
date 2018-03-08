/// @function extract_best_paths(paths)
/// @description return an array containing all destinations
/// @param {real} paths

var paths = argument0;
var toRemove = noone;



for(var i = 0; i<array_height_2d(paths); i++){	
	if(paths[i, array_length_2d(paths, i)-1].piece != noone) {
		paths = remove_array_2d(paths, i, -1);
		i-=1;
	}
}

var bound = array_height_2d(paths);
for(var i = 0; i<bound; i++){	
	
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
toRemove = sort(toRemove); //sort the indices array
for(var i = array_length_1d(toRemove) - 1; i >= 0; i--) {
	paths = remove_array_2d(paths, toRemove[i], -1);
}

show_debug_message(paths);
var i = 0; 
bound = array_height_2d(paths);
var must_eat = false;
while(!must_eat && i<bound) {
	if(array_length_2d(paths, i) >= 2){
		must_eat = true;	
	}
	i++;
}
if(must_eat){
	for(var i = 0; i<array_height_2d(paths); i++){
		if(array_length_2d(paths, i) < 2) {
			paths = remove_array_2d(paths, i, -1);
			i--;			
		}
	}
}
show_debug_message(string(must_eat)+string(paths));



return paths;
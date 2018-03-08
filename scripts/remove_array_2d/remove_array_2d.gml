/// @function remove_array_2d(arr, index1, index2)
/// @description return an array containing the elements of the given array except the element at given indices
/// @param {real} arr
/// @param {real} index in the height of the array. If == -1, iterates all the height
/// @param {real} index in the length of the array. If == -1, iterates all the length

var arr = argument0;
var index1 = argument1;
var index2 = argument2;
var new = noone;
var nb_elts1 = 0;
var nb_elts2 = 0;

for(var j = 0;j<array_height_2d(arr);j++) {
	if(j!=index1){
		
		nb_elts2 = 0;
		for(var i = 0; i<array_length_2d(arr, j); i++) {
			if(i!=index2) {
				show_debug_message(string(nb_elts1)+" "+string(nb_elts2));
				new[nb_elts1, nb_elts2] = arr[j, i];
				nb_elts2+=1;
			}				
		}	
		if(array_length_2d(new, nb_elts1) > 0) nb_elts1 += 1;
	}		
	
}

return new;
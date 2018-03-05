/// @function remove_redundancy(array)
/// @description return an array containing non-redundant elements
/// @param {} array

var array = argument0;
var new = noone;
var index = 0;

for(var i=0; i<array_length_1d(array); i++) {
	if(!contains(new, array[i])) {
		new[index] = array[i];	
		
		index+=1;
	}

}


return new;

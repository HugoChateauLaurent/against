/// @function remove_array_1d(arr, index)
/// @description return an array containing the elements of the given array except the element at given index
/// @param {real} arr
/// @param {real} index

var arr = argument0;
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
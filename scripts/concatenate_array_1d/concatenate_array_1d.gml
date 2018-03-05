/// @function concatenate_array_1d(arr1, arr2)
/// @description return an array containing the elements of both arrays
/// @param {real} arr1
/// @param {real} arr2

var arr1 = argument0;
var arr2 = argument1;
var new = noone;
var nb_elts = 0;

for(var j = 0;j<array_length_1d(arr1);j++) {
	new[nb_elts] = arr1[j];
	nb_elts+=1;
		
}

for(var j = 0;j<array_length_1d(arr2);j++) {
	new[nb_elts] = arr2[j];
	nb_elts+=1;
		
}


return new;

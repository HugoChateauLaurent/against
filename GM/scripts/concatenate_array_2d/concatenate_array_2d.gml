/// @function concatenate_array_2d(arr1, arr2)
/// @description return an array containing the elements of both arrays
/// @param {real} arr1
/// @param {real} arr2

var arr1 = argument0;
var arr2 = argument1;
var new = noone;
var nb_elts = 0;

for(var j = 0;j<array_height_2d(arr1);j++) {
	for(var k = 0;k<array_length_2d(arr1,j);k++) {
		new[nb_elts,k] = arr1[j,k];
	}
	nb_elts+=1;
		
}

for(var j = 0;j<array_height_2d(arr2);j++) {
	for(var k = 0;k<array_length_2d(arr2,j);k++) {
		new[nb_elts,k] = arr2[j,k];
	}
	nb_elts+=1;
		
}


return new;

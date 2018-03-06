/// @function array_2d_to_1d(arr, index)
/// @description return an array containing the elements of the given array at height of argument index
/// @param {real} arr
/// @param {real} index of height

var arr = argument0;
var index = argument1;
var new = noone;

for(var i = 0; i<array_length_2d(arr, index); i++) {
	new[i] = arr[index, i];
}

return new;
/// @function array_2d_to_1d(arr1, arr2)
/// @description return -1 if there is no overlap or return the argument index of the smallest if the elements of the smallest array are contained at the beginning of the largest and in the same order
/// @param {real} arr1
/// @param {real} arr2

if(array_length_1d(argument0)>array_length_1d(argument1)) {
	var smallest = 1;
	var arr1 = argument1; //smallest
	var arr2 = argument0; //largest
} else {
	var smallest = 0;
	var arr1 = argument0;
	var arr2 = argument1;
}

var overlapping = true;
var i = 0;
while(overlapping && i<array_length_1d(arr1)){
	if(arr1[i] != arr2[i]){ // check elements equality
		overlapping = false;
	}
	
	i++;
}

if(overlapping) {
	return smallest;
} else {
	return -1;	
}
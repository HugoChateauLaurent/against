/// @function sort(arr)
/// @description return the sorted array
/// @param {real} arr

var arr = argument0;
var iteration = 0;
var permut = true;
while(permut) {
    permut = false;
    for(var i = 0; i<(array_length_1d(arr) - iteration - 1); i++) {
        if(arr[i] > arr[i+1]) {
			var tmp = arr[i];
			arr[i] = arr[i+1];
			arr[i+1] = tmp;
            permut = true;
		}
	}
    iteration += 1;
}

return arr;
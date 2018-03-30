/// @function contains(array, element)
/// @description return whether the element is in the array or not
/// @param {} array
/// @param {real} element

var array = argument0;
var element = argument1;
var i=0;
var found = false;

while(!found && i<array_length_1d(array)) {
	if(element = array[i]){
		found = true;	
	}
	
	i++;
}

return found;

/// @function list_array_conversion(ds)
/// @description return a conversion of the datastructure into an array or a list
/// @param {real} ds the datastructure to convert

var new = noone;
var ds = argument0;
if(is_array(ds)) {
	new = ds_list_create();
	for(var i = 0; i<array_length_1d(ds); i++) {
		ds_list_add(new, ds[i]);	
	}
} else if(ds_exists(ds, ds_type_list)){
	for(var i = 0; i<ds_list_size(ds); i++) {
		new[i] = ds_list_find_value(ds, i)
	}
}
return new;
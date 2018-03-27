/// @function sText(spawner)
/// @description return the sorted array
/// @param {real} arr
var spawner = argument0;

instance_destroy(spawner.dialog_box);
spawner.dialog_box = instance_create_depth(0, 0, 0 , obj_text);
with (spawner.dialog_box) {
	
	padding = 10;
	maxlength = view_wview[0];
	text = spawner.dialog_text;
	spd = 1;
	font = fDialog;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size/2), maxlength-2);
	text_height = string_height_ext(text, font_size+(font_size/2), maxlength);
	
	boxwidth = text_width + (padding*2);
	boxheight = text_height + (padding*2);
	
}
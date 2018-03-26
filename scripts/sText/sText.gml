//scr_text();

txt = instance_create_depth(0, 0, 0 , obj_text);
with (txt) {
	
	padding = 10;
	maxlength = view_wview[0];
	text = global.dialogText;
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
/// Add letters over time
// You can write your code in this editor

if (time < text_length) {
	time += spd;
	print = string_copy(text, 0, time)
}

///Render textbox & text

var coordY = 767-250;


draw_set_alpha(alpha);
if (alpha < 1) alpha += spd/10; else alpha = 1;

draw_set_font(font);
draw_set_color(c_white);
draw_rectangle(100, coordY, 100+boxwidth, coordY+boxheight, 0);
draw_set_color(c_black);
draw_rectangle(100, coordY, 100+boxwidth, coordY+boxheight, 1);

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(100 + padding, coordY + padding, print, font_size+(font_size/2), maxlength-210);

draw_set_alpha(1);
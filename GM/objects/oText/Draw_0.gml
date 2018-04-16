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
var decalage = 100;
draw_set_font(font);
draw_set_color(c_white);
draw_rectangle(70, coordY+decalage, 70+boxwidth, coordY+boxheight+decalage, 0);
draw_set_color(c_black);
draw_rectangle(70, coordY+decalage, 70+boxwidth, coordY+boxheight+decalage, 1);
draw_set_color(c_black);
draw_rectangle(71, coordY+decalage+1, 71+boxwidth, coordY+boxheight+decalage+1, 1);

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(70+ padding, coordY + decalage + padding, print, font_size+(font_size/2), maxlength-220);

draw_set_alpha(1);
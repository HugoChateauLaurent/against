global.active_match_color = make_colour_rgb(50, 180, 50); //couleur d'une alumette cliquée
global.j1_match_color_inactive = make_colour_rgb(185, 207, 223);
global.j2_match_color_inactive = make_colour_rgb(255, 221, 208);
global.j1_match_color_hover = make_colour_rgb(58, 115, 155);
global.j2_match_color_hover = make_colour_rgb(241, 124, 80);

global.match_color = make_colour_rgb(255, 255, 255);

global.black_match_color = make_colour_rgb(0, 0, 0);
global.white_match_color = make_colour_rgb(255, 255, 255);



global.match_size = 2;


//instance_create_depth(0,0,1000, oBoardMatches); //create board	

score = instance_create_depth(10,10,-20, oMa_Score); //create score

global.winner = 0;

global.versus = 4; 
global.mask = instance_create_depth(30,30,-999,oMask);

global.mask.image_blend = c_black;
global.mask.persistent = true;

global.id_replique = 0;

global.versus = 1;

// Définit si les textes peuvent commencer
global.part_with_text = true;

// donne le numéro de la room
global.id_room = 0;

//Définit si Bob est dans une room où il a le droit de bouger
global.bob_move = true;

global.match_size = 2;
room_goto_next();

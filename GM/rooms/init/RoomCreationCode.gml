global.mask = instance_create_depth(30,30,-999,oMask);

global.mask.image_blend = c_black;
global.mask.persistent = true;

global.id_replique = 0;

// Définit le type d'adversaire pour les jeux
// Allumettes : 1 -> random, sinon WS
global.versus = 1;
room_goto_next();

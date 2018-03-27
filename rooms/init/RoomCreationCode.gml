global.mask = instance_create_depth(30,30,-999,oMask);

global.mask.image_blend = c_black;
global.mask.persistent = true;
room_goto_next();

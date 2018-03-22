/// @description Insert description here
// Mouvement

speed = 5;
MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);

// Move Player
if(MOVELEFT && x > sprite_width/2)
{
	x -= speed;
}

if(MOVERIGHT && x > room_width - sprite_width/2)
{
	x += speed;	
}

if(MOVEUP && y > room_height/2)
{
	y -= speed;	
}

if(MOVEDOWN && y < room_height - sprite_width/2)
{
	y += speed; 	
}


/*
var xadd = keyboard_check(vk_right) - keyboard_check(vk_left);
var yadd = keyboard_check(vk_up) - keyboard_check(vk_down);

//check for x collisions
if (place_meeting(x + (xadd * speed), y, oWall))
{
	x += xadd * speed;
}

//check for y collisions
if (place_meeting(x, y + (yadd * speed), oWall))
{
	while(! place_meeting(x * sign(xadd), y, oWall))
		x += sign(xadd);
}
else
{
	x += xadd * speed;
}
*/
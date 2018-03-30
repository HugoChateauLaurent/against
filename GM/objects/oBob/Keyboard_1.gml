/// @description Insert description here
// Mouvement

speed = 2;
MOVELEFT = keyboard_check(vk_left);
MOVERIGHT = keyboard_check(vk_right);
MOVEUP = keyboard_check(vk_up);
MOVEDOWN = keyboard_check(vk_down);


// Move Player
if(MOVELEFT)
{
	x -= speed;
} else if(MOVERIGHT)
{
	x += speed;	
} else if(MOVEUP)
{
	y -= speed;	
} else if(MOVEDOWN)
{
	y += speed; 	
}
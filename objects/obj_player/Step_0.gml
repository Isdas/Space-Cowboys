// Get the player's input
key_right = keyboard_check(vk_right) + keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) + keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) + keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) + keyboard_check(ord("S"));

// Act to the input
if(key_up)
{
	vsp -= 1;
}
if(key_down)
{
	vsp += 1;
}
y += vsp;

if(key_left)
{
	hsp -= 1;
}
if(key_right)
{
	hsp += 1;
}
x += hsp;
// Get the player's input
key_right = keyboard_check(vk_right) + keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) + keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) + keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) + keyboard_check(ord("S"));
key_space = keyboard_check_pressed(vk_space);

// Act to the input
if(key_right && !place_meeting(x + 8, y, par_box))
{
	x += 8
}

if(key_left && !place_meeting(x - 8, y, par_box))
{
	x -= 8
}
if(key_up && !place_meeting(x, y - 8, par_box))
{
	y -= 8
}
if(key_down && !place_meeting(x, y + 8, par_box))
{
	y += 8
}


if(key_space)
{
	rock = instance_create_depth(x, y, 0, obj_rock);
	rock.direction = image_angle;
	rock.image_angle = image_angle;
	rock.speed = 7.5;
}
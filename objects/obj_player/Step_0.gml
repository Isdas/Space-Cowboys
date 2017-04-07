// Get the player's input
key_right = keyboard_check(vk_right) + keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) + keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) + keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) + keyboard_check(ord("S"));
key_space = keyboard_check_pressed(vk_space);

// Act to the input
if(key_left)
{
	image_angle += 2;
}
if(key_right)
{
	image_angle -= 2;
}
if(key_up)
{
	motion_add(image_angle, 0.2);
}

speed = max(speed - 0.01, 0);
if(speed > 5) speed = 5;

if(key_space)
{
	rock = instance_create_depth(x, y, 0, obj_rock);
	rock.direction = image_angle;
	rock.image_angle = image_angle;
	rock.speed = 7.5;
}
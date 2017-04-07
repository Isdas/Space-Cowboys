var move = 0;
move -= keyboard_check_pressed(vk_up) + keyboard_check_pressed(ord("W"));
move += keyboard_check_pressed(vk_down) + keyboard_check_pressed(ord("S"));

if(move != 0)
{
	mpos += move;
	if(mpos < 0) mpos = array_length_1d(menu) - 1;
	if(mpos > array_length_1d(menu) - 1) mpos = 0;
}

var push;
push = keyboard_check_released(vk_enter) + keyboard_check_released(vk_shift) + keyboard_check_pressed(vk_space);
if(push == 1) scr_startmenu();

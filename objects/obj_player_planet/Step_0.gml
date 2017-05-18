// Get the player's input
key_right = keyboard_check(vk_right) + keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) + keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) + keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) + keyboard_check(ord("S"));
key_space = keyboard_check_pressed(vk_space);

// Set depth
depth = -y + 17;

// React to inputs
hsp = movespeed * (key_right - key_left);
vsp = movespeed * (key_down - key_up);

if(!isTalking)
{
	if(place_meeting(x + hsp, y, par_box))
	{
		while(!place_meeting(x + sign(hsp), y, par_box)) x += sign(hsp)
	
		hsp = 0;	
	}
	x += hsp;
	
	if(place_meeting(x, y + vsp, par_box))
	{	
		while(!place_meeting(x, y + sign(vsp), par_box)) y += sign(vsp)
		
		vsp = 0;
	}
	y += vsp;
}

// Checks if she's colliding with a NPC around her and not alrady talking
if(place_meeting(x, y, obj_npc) && !isTalking)
{
    // If so, and they press space, begin a conversation
    if(keyboard_check_pressed(vk_space))
	{
        // Set the global variable messageGiver
        messageGiver = collision_circle(x, y, 128, obj_npc, true, true);
        
		// Set the global variable PCTalking
        pcTalking = self;
        isTalking = true;
        
		// Default values of index1, index2
        index1 = 0;
        index2 = 0;
        
		scr_dialogue();
    }
}

if(isTalking)
{
    if(index1 == 02 && messageGiver.object_index == obj_npc && currentChoice == 0)
        bitMe = true;
    else if(index1 == 02 && messageGiver.object_index == obj_npc && currentChoice == 1)
        bitMe = false;
}
if(bitMe && !isTalking)
{
    bitMe = false;
	scr_death();
}

if(isTalking)
{
    if(index1 == 01 && messageGiver.object_index == obj_npc)
        upgradeShip = true;
}
if(upgradeShip && !isTalking)
{
	with(obj_spaceship) global.spaceshipindex = 1;
    upgradeShip = false;
}
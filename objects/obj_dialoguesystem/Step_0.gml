if(showingChoices)
{
    for(i = 0; i < array_length_1d(choiceBox); ++i) {
        choiceBox[i].image_index = 0;
    }
	
    if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
        currentChoice = clamp(++currentChoice, 0, array_length_1d(choiceBox) - 1);
	
    if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
        currentChoice = clamp(--currentChoice, 0, array_length_1d(choiceBox) - 1);
	
    choiceBox[currentChoice].image_index = 1;
	
    // Once a choice has been chosen
    if(keyboard_check_pressed(vk_space) && alarm[0] < 0)
	{
        index1 = choiceBox[currentChoice].myNumber; // Set index1 to where it should go
        index2 = 0; // Reset the index2
        showingChoices = false; // No longer showing choices
        currentChoice = 0; // Reset the currentChoice
        
        for(i = 0; i < array_length_1d(choiceBox); ++i)
            with(choiceBox[i]) instance_destroy();
		
		choiceBox = 0;
		
        //If the conversation shouldn't end, then call dialogue script
        if(index1 != 99) scr_dialogue(); else obj_player_planet.alarm[0] = 10;
    }
}
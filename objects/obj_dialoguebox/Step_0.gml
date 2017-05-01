// Checks if space is pressed and if the text on screen is the full message to displayed
if(keyboard_check_pressed(vk_space) && position >= string_length(myMessage[messageIndex]))
{
    ++messageIndex; // Move onto the next message to be displayed
    position = 0; // Reset the starting point
    currentText = ""; // Reset the currentText
	
    // If there's no more messages from the NPC & no choices, then end the conversation
    if(messageIndex >= array_length_1d(myMessage) && !hasChoices)
	{
        // Destroy the object dialogueBox
        with(obj_dialoguebox)
            instance_destroy();
			
        // Set it so the player can move
        obj_player_planet.alarm[0] = 10;
    }
    else if(messageIndex >= array_length_1d(myMessage) && hasChoices)
	{
        // Still destroy the dialogueBox
        with(obj_dialoguebox)
            instance_destroy();
			
        // But call the script
        scr_showchoices();
    }
}

// If it's still adding text, it will add all the text at once
else if(keyboard_check_pressed(vk_space) && position < string_length(myMessage[messageIndex]))
    alarm[0] = 5;

/// Add letters over time
// As long as we're still displaying a valid message (this keeps it from throwing an error)
if(messageIndex < array_length_1d(myMessage))
{
    // If the message on screen is less than the full message to display
    if(string_length(currentText) < string_length(myMessage[messageIndex]))
	{
        // Continue copying the string to what's being displayed
        currentText = string_copy(myMessage[messageIndex], 1, position);
        // 1 letter at a time
        ++position;
    }
}
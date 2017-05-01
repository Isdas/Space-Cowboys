globalvar pcTalking, // The player who's chatting, which can be used to get information from that PC
messageGiver, // The NPC who's chatting
index1, // First index of the 2D array
index2, // Second index of the 2D arrayhasChoices, // Whether the PC has choices to choose from
choiceBox, // The array of active choiceBoxes
showingChoices, // Indicating whether the choices are active
currentChoice; // What option the player currently has chosen

showingChoices = false; // Set it to false, since it's going to be checked right away
currentChoice = 0; // Default option is 0
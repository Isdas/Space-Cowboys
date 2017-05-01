///src_death()
// Script for checking where the player should respawn when dying

if(global.checkpointR != 0)
{
	room_goto(global.checkpointR);
}
else
{
	room_restart();
}
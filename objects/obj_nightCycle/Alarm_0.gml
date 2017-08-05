if alpha < 0.9 {
	alpha += 0.01
	alarm[0]=1
}
else if alpha >= 0.9 {
	alarm[1] = room_speed*nightLength;
}

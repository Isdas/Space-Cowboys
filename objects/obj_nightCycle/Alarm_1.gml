if alpha > 0{
	alpha -= 0.01
	alarm[1]=1
}
else if alpha <= 0 {
	alarm[0] = room_speed*dayLength;
}
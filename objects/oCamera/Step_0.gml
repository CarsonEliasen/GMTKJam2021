//CameraZoom
camera_zoom()

//Reposition Camera
if(follow != noone) {
	if (xTo != noone and yTo != noone) {
		//CameraMove
		x += (xTo-x)/5
		y += (yTo-y)/5
		xTo = follow.x
		yTo = follow.y
	}
}
else {
	xTo = noone
	yTo = noone
}

//Rebuild Matricies
rebuild_matricies()
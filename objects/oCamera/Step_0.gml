//CameraZoom
if(mouse_wheel_down()){
	if(camWidth < camMaxWidth or camHeight < camMaxHeight){
		camWidth = camWidth * (1+zoomScaler)
		camHeight = camHeight * (1+zoomScaler)
	}
} else if(mouse_wheel_up()){
	if(camWidth > camMinWidth and camHeight > camMinHeight){
		camWidth = camWidth * (1-zoomScaler)
		camHeight = camHeight * (1-zoomScaler)
	}
}





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
var vm  = matrix_build_lookat(x,y,-100, 
							  x,y,0,
							  0,1,0)
var pm = matrix_build_projection_ortho(camWidth, camHeight, 1, 999999)
camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera, pm)
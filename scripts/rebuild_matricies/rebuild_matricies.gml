// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rebuild_matricies(){
	var vm  = matrix_build_lookat(x,y,-100, 
								  x,y,0,
								  0,1,0)
	var pm = matrix_build_projection_ortho(camWidth, camHeight, 1, 999999)
	camera_set_view_mat(camera,vm)
	camera_set_proj_mat(camera, pm)
}
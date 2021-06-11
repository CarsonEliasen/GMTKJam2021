followDefault = oPlayer
follow = followDefault
camWidth = 1920
camHeight = 1080

camera = camera_create()
var vm  = matrix_build_lookat(x,y,-100, 
							  x,y,0,
							  0,1,0)
var pm = matrix_build_projection_ortho(camWidth, camHeight, 1, 999999)

camera_set_view_mat(camera, vm)
camera_set_proj_mat(camera, pm)

view_camera[0] = camera

xTo = x
yTo = y
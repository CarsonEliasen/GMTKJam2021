depth = 200
followDefault = oPlayer
follow = followDefault
if(variable_instance_exists(oPlayer, "party")){
	var party = oPlayer.party
	for(var i = 0; i < array_length(party); i++){
		var member = party[i]
		if(member != 4){
			follow = member	
		}
	}
}
zoomScaler = .1
camWidth = 1920
camHeight = 1080
camMaxWidth = 1920
camMaxHeight = 1080
camMinWidth = sprite_get_height(sCell) * 16
camMinHeight = sprite_get_height(sCell) * 9

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

instance_create_depth(x,y,700,oBG)
instance_create_depth(x,y,depth, oUIController)
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_zoom(){
	if(input.in[IN.zoomIn]){
		if(camWidth < camMaxWidth or camHeight < camMaxHeight){
			camWidth = camWidth * (1+zoomScaler)
			camHeight = camHeight * (1+zoomScaler)
		}
	} else if(input.in[IN.zoomOut]){
		if(camWidth > camMinWidth and camHeight > camMinHeight){
			camWidth = camWidth * (1-zoomScaler)
			camHeight = camHeight * (1-zoomScaler)
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePlayer(){
	var lrSpeed = 0
	var udSpeed = 0
	if(keyUp){
		udSpeed -= mvSpeed	
	}
	if(keyDown){
		udSpeed += mvSpeed	
	}
	if(keyLeft){
		lrSpeed -= mvSpeed	
	}
	if(keyRight){
		lrSpeed += mvSpeed	
	}
	x += lrSpeed
	y += udSpeed
}
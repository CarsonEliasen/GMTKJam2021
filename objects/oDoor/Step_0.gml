var nearChar = instance_nearest(x,y,oCharacter)
var touching = instance_exists(nearChar) and (x-nearChar.x==0) and (y-nearChar.y==0)
if(touching and createButtons){
	show_debug_message("creatingButtons")
	instance_create_depth(x, y-24, depth, oButtonDecendConfirm)
	createButtons = false
} else if(!touching and !createButtons){
	show_debug_message("reseting buttons")
	instance_destroy(oButtonDecendConfirm)
	createButtons = true
}
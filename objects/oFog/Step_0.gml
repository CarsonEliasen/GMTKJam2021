var nearChar = instance_nearest(x,y,oCharacter)
if(point_distance(x,y, nearChar.x, nearChar.y) < visibility){
	instance_destroy()
}
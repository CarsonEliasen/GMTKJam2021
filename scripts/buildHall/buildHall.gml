// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildHall(currX, currY, maxX, maxY){
	show_debug_message("building hall")
	if(currX < maxX and currY < maxY){
		var nearHall = instance_nearest(currX, currY, oHall)
		if(instance_exists(nearHall)){
			if(nearHall.x == currX and nearHall.y == currY){
				show_debug_message("ran into existing hall")
				return false
			}
		}
		var nearWall = instance_nearest(currX,currY,oWall)
		if(instance_exists(nearWall)){
			if(nearWall.x != currX and nearWall.y != currY){
				show_debug_message("not deleting wall")
				return false
			} else if (nearWall.edge){
				show_debug_message("on an edge")
				return false	
			}
		}
		var currHall = instance_create_depth(currX, currY, depth, oHall)
		return true
	}
	show_debug_message("out of bounds")
	return false	
}
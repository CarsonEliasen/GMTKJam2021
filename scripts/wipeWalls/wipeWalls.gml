// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wipeWalls(){
	with oWall{
		if(!edge){
			var nearHall = instance_nearest(x,y,oHall)
			if(instance_exists(nearHall) and x == nearHall.x and y == nearHall.y){
				instance_destroy()	
			}
		}
	}
}
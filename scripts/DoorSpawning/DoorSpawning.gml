// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoorSpawning(levelDims){
	show_debug_message("DOOR GEN")
	var cellH = sprite_get_height(sCell)
	var spawnX = irandom_range(1,levelDims[0]-1) * cellH
	var spawnY = irandom_range(1,levelDims[2]-1) * cellH
	show_debug_message(levelDims)
	var door = instance_create_depth(spawnX, spawnY, depth, oDoor)
	
	//Make path to door
	var currX = door.x
	var currY = door.y
	var to = instance_nearest(currX, currY, oChamber)
	instance_create_depth(to.x, to.y, depth, oHall)
	instance_create_depth(currX, currY, depth, oHall)
	var countX = 0
	var countY = 0
	while(countX <= abs(currX-to.x)/cellH or countY <= abs(currY-to.y)/cellH){
		var dir = 0
		if(countX <= abs(currX-to.x)/cellH and countY <= abs(currY-to.y)/cellH){
			dir = irandom(1)
			if(dir == 0){
				countX++
			} else{
				countY++	
			}
		} else if(countX <= abs(currX-to.x)/cellH){
			countX++
		} else{
			countY++
		}
		instance_create_depth(currX + countX*cellH*sign(to.x-currX), currY + countY*cellH*sign(to.y-currY), depth, oHall)
	}
	wipeWalls()
	instance_destroy(oHall)
	instance_destroy(oChamber)
}
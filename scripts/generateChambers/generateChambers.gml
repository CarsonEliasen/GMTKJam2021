// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateChambers(level, levelDims){
	var numChambers = irandom_range(max(3, level), max(3, level*2))
	var startingWalls = instance_number(oWall)
	makeFirstChamber(levelDims, numChambers, -4, -4)
	while(instance_number(oWall) > startingWalls * .70){
		makeChamber(levelDims, numChambers)
	}
	show_debug_message("MAKING HALLS COMPLETE")
	instance_destroy(oHall)
	for(var i = 0; i < instance_number(oChamber); i++){
		var connections = irandom_range(2, instance_number(oChamber)/2)
		//var connections = 1
		for(var j = 0; j < connections; j++){
			var to = instance_find(oChamber, irandom(instance_number(oChamber)-1))
			var currX = instance_find(oChamber, i).x
			var currY = instance_find(oChamber, i).y
			var cellH = sprite_get_width(sCell)
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
		}
	}
}
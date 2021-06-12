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
		//var connections = irandom_range(1, 1)
		for(var j = 0; j < connections; j++){
			var to = instance_find(oChamber, irandom(instance_number(oChamber)-1))
			var currX = instance_find(oChamber, i).x
			var currY = instance_find(oChamber, i).y
			var cellH = sprite_get_width(sCell)
			while(to.x != currX and to.y != currY){
				show_debug_message(to.x-currX)
				show_debug_message(to.y-currY)
				if(to.x == x){
					dir = 1	
				}else if(to.y == y){
					dir = 0
				} else{
					var dir = irandom(1)
				}
				if(dir == 0){
					currX += cellH * sign(to.x-currX)
				}
				if(dir == 1){
					currY += cellH * sign(to.y-currY)
				}
				instance_create_depth(currX, currY, depth, oHall)
			}
			wipeWalls()
			instance_destroy(oHall)
		}
	}
	//instance_destroy(oHall)
}
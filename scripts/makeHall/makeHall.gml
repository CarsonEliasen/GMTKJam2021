// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeHall(startX, startY, dir, levelDims, numChambers){
	show_debug_message("making hallway")
	var cellH = sprite_get_height(sCell)
	var currX = startX
	var currY = startY
	var maxX = levelDims[0] * cellH
	var maxY = levelDims[1] * cellH
	var iMax = irandom_range(2,5)
	var recurse = true
	switch dir{	
		case 0:
			for(var i = 0; i < iMax; i++){
				currY -= cellH
				recurse = buildHall(currX, currY, maxX, maxY)
			}
			break;	
		case 1:
			for(var i = 0; i < iMax; i++){
				currX -= cellH
				recurse = buildHall(currX, currY, maxX, maxY)
			}
			break;	
			
		case 2:
			for(var i = 0; i < iMax; i++){
				currY += cellH
				recurse = buildHall(currX, currY, maxX, maxY)
			}
			break;	
			
		case 3:
			for(var i = 0; i < iMax; i++){
				currX += cellH
				recurse = buildHall(currX, currY, maxX, maxY)
			}
			break;	
	}
	
	//Recursive Halls
	//show_debug_message("Checking recursion")
	//show_debug_message(chambersMade)
	//show_debug_message(numChambers)
	//show_debug_message(recurse)
	if(recurse and irandom(4) != 1){
		show_debug_message("recursing")
		var splits = getHallSplits(1,14)
		for(var i = 0; i < 2; i++){
			if(splits[i] != -4){
				makeHall(currX, currY, splits[i], levelDims, numChambers)
			} else{
				break;	
			}
		}
	}
}
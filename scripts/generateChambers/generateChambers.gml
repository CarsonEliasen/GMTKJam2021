// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateChambers(level, levelDims){
	var numChambers = irandom_range(max(3, level), max(3, level*2))
	var chambersMade = 0
	var chamber = makeChamber(levelDims, numChambers, -4, -4)
	chambersMade++
	while(chambersMade < numChambers){
		makeHallSplits(chamber)
		
		/*
		var starts = getHallStarts(chamber)
		var startX = starts[0]
		var startY = starts[1]
		var dir = starts[2]
		makeHall(startX, startY, dir)
		
		var starts = getHallStarts(chamber)
		var startX = starts[0]
		var startY = starts[1]
		var dir = starts[2]
		makeHall(startX, startY, dir)
		
		var starts = getHallStarts(chamber)
		var startX = starts[0]
		var startY = starts[1]
		var dir = starts[2]
		makeHall(startX, startY, dir)
		*/
		
		chambersMade++
	}
}
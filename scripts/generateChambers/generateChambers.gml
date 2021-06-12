// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateChambers(level, levelDims){
	var numChambers = irandom_range(max(3, level), max(3, level*2))
	var chambersMade = 0
	var chamber = makeChamber(levelDims, numChambers, -4, -4)
	chambersMade++
	if(chambersMade < numChambers){
		var startX = 0
		var startY = 0
		switch(irandom(4)){
			case 0:
				startX = irandom(chamber[2])
				startY = chamber[1]
				dir = 
				break;
			case 1:
				startX = chamber[0]
				startY = irandom(chamber[3])
				break;
			case 2:
				startX = irandom(chamber[2])
				startY = chamber[1] + chamber[3]
				break;
			case 3:
				startX = chamber[0] + chamber[2]
				startY = irandom(chamber[3])
				break;
		}
		makeHall(startX, startY, dir)
	}
}
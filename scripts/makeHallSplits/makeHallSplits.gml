// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeHallSplits(chamber, levelDims, numChambers){
	var splits = getHallSplits(0, 15)
	for(var i = 0; i < 2; i++){
		if(splits[i] != -4){
			var starts = getHallStarts(chamber, splits[i])
			var startX = starts[0]
			var startY = starts[1]
			makeHall(startX, startY, splits[i], levelDims, numChambers)
		} else{
			break;	
		}
	}
	
	//Destroy walls
	wipeWalls()
}
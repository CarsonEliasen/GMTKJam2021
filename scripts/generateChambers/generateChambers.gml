// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateChambers(level, levelDims){
	var numChambers = irandom_range(max(1, level/2), level*2)
	var avgScaler = .7
	var avgChaberSize = [levelDims[0]/numChambers * avgScaler, levelDims[1]/numChambers * avgScaler]
	//Make Chambers
	for(var chamber = 0; chamber < numChambers; chamber++){
		//Gen Chamber Type
		var chamberType = irandom(100)
		//Decide Chamber Dims
		var chSizeOffset = .3
		var chamberWidth = irandom_range(avgChaberSize[0] * (1 - chSizeOffset), avgChaberSize[0] * (1 + chSizeOffset))
		var chamberHeight = irandom_range(avgChaberSize[1] * (1 - chSizeOffset), avgChaberSize[1] * (1 + chSizeOffset))
		//Find chamber Start
		var chamberStartX = irandom(levelDims[0])
		var chamberStartY = irandom(levelDims[1])
		//Make Walls And Populate Chamber
		for(var col = 0; col < chamberWidth; col++){
			for(var row = 0; row < chamberHeight; row++){
				if((row == 0 or col == 0) or (row == chamberHeight-1 or col == chamberWidth-1)){
					var posX = (row + chamberStartX) * sprite_get_height(sCell)
					var posY = (col + chamberStartY) * sprite_get_height(sCell)
					if(!place_meeting(posX, posY, oWall)){
						instance_create_depth(posX, posY, depth, oWall)
					}
				}
			}
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateChambers(level, levelDims){
	var numChambers = irandom_range(max(3, level), max(3, level*2))
	var avgScaler = .75
	var avgChaberSize = [floor(levelDims[0]/numChambers * avgScaler), ceil(levelDims[1]/numChambers * avgScaler)]
	var chambers = array_create(numChambers, array_create(5, 0))
	//Make Chambers
	for(var chamber = 0; chamber < numChambers; chamber++){
		//Gen Chamber Type
		var chamberType = irandom(100)
		//Decide Chamber Dims
		var chSizeOffset = .3
		var chamberWidth = irandom_range(avgChaberSize[0] * (1 - chSizeOffset), avgChaberSize[0] * (1 + chSizeOffset))
		var chamberHeight = irandom_range(avgChaberSize[1] * (1 - chSizeOffset), avgChaberSize[1] * (1 + chSizeOffset))
		//Find Chmaber Start
		var chamberStartX = irandom_range(1, levelDims[0] - chamberWidth - 1)
		var chamberStartY = irandom_range(1, levelDims[1] - chamberHeight - 1)
		//Clear Rooms
		for(var col = 0; col < chamberWidth; col++){
			for(var row = 0; row < chamberHeight; row++){
				var cellHeight = sprite_get_height(sCell)
				var posX = (row + chamberStartX) * cellHeight
				var posY = (col + chamberStartY) * cellHeight
				with(oWall){
					if(y == posY and x == posX){
						if(!edge){
							instance_destroy()
						}
					}
				}
			}
		}
		chambers[chamber] = [chamberType, chamberWidth, chamberHeight, chamberStartX, chamberStartY]
	}
}
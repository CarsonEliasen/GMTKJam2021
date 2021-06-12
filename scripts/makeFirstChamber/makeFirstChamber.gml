// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeFirstChamber(levelDims, numChambers, startX, startY){
	var avgScaler = .75
	var avgChaberSize = [floor(levelDims[0]/numChambers * avgScaler), ceil(levelDims[1]/numChambers * avgScaler)]
	//Gen Chamber Type
	var chamberType = irandom(100)
	//Decide Chamber Dims
	var chSizeOffset = .3
	var chamberWidth = irandom_range(avgChaberSize[0] * (1 - chSizeOffset), avgChaberSize[0] * (1 + chSizeOffset))
	var chamberHeight = irandom_range(avgChaberSize[1] * (1 - chSizeOffset), avgChaberSize[1] * (1 + chSizeOffset))
	//FindStarting Position
	startX = floor(levelDims[0]/2) - floor(chamberWidth/2)
	startY = floor(levelDims[1]/2) - floor(chamberHeight/2)
	//Clear Rooms
	for(var col = 0; col < chamberWidth; col++){
		for(var row = 0; row < chamberHeight; row++){
			var cellHeight = sprite_get_height(sCell)
			var posX = (row + startX) * cellHeight
			var posY = (col + startY) * cellHeight
			with(oWall){
				if(y == posY and x == posX){
					if(!edge){
						instance_destroy()
					}
				}
			}
		}
	}
	var cellHeight = sprite_get_height(sCell)
	instance_create_depth(startX *cellHeight, startY*cellHeight, depth, oChamber)
	return [startX*cellHeight, startY*cellHeight, chamberWidth, chamberHeight, chamberType]
}
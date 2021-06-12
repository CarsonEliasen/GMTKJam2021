// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getHallStarts(chamber, dirToGrab){
	var startX = 0;
	var startY = 0;
	var cellHieght = sprite_get_height(sCell)
	switch(dirToGrab){
		//[startX, startY, chamberWidth, chamberHeight, chamberType]
		case 0:
			startX = irandom(chamber[2])* cellHieght +chamber[0]
			startY = chamber[1]
			break;
		case 1:
			startX = chamber[0]
			startY = (irandom(chamber[2]-1) * cellHieght + chamber[1])
			break;
		case 2:
			startX = irandom(chamber[3])* cellHieght +chamber[0]
			startY = chamber[1] + ((chamber[2]-1) * cellHieght)
			break;
		case 3:
			startX = chamber[0] + (chamber[3]-1) * cellHieght
			startY = (irandom(chamber[2]-1) * cellHieght + chamber[1])
			break;
	}
	return [startX, startY]
}
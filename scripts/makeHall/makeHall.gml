// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeHall(startX, startY, dir){
	var cellH = sprite_get_height(sCell)
	var currX = startX
	var currY = startY
	var iMax = irandom_range(2,5)
	switch dir{	
		case 0:
			for(var i = 0; i < iMax; i++){
				currY -= cellH
				var currHall = instance_create_depth(currX, currY, depth, oHall)
				var nearWall = instance_nearest(currX,currY,oWall)
				if(nearWall.x == currX and nearWall.y == currY){
					if(nearWall.edge){
						instance_destroy(currHall)
						break;
					}
				}
			}
			break;	
		case 1:
			for(var i = 0; i < iMax; i++){
				currX -= cellH
				var currHall = instance_create_depth(currX, currY, depth, oHall)
				var nearWall = instance_nearest(currX,currY,oWall)
				if(nearWall.x == currX and nearWall.y == currY){
					if(nearWall.edge){
						instance_destroy(currHall)
						break;
					}
				}
			}
			break;	
			
		case 2:
			for(var i = 0; i < iMax; i++){
				currY += cellH
				var currHall = instance_create_depth(currX, currY, depth, oHall)
				var nearWall = instance_nearest(currX,currY,oWall)
				if(nearWall.x == currX and nearWall.y == currY){
					if(nearWall.edge){
						instance_destroy(currHall)
						break;
					}
				}
			}
			break;	
			
		case 3:
			for(var i = 0; i < iMax; i++){
				currX += cellH
				var currHall = instance_create_depth(currX, currY, depth, oHall)
				var nearWall = instance_nearest(currX,currY,oWall)
				if(nearWall.x == currX and nearWall.y == currY){
					if(nearWall.edge){
						instance_destroy(currHall)
						break;
					}
				}
			}
			break;	
	}
	
	//Recursive Halls
	if(irandom(2)==1){
		var splits = getHallSplits(0,15)
		for(var i = 0; i < 2; i++){
			if(splits[i] != -4){
				makeHall(currX, currY, splits[i])
			} else{
				break;	
			}
		}
	}
}
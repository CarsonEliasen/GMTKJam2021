// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getHallSplits(lowerBound, upperBound){
	switch(irandom_range(lowerBound, upperBound)){
		case 0:
			//Nothing
			return [-4,-4,-4]
			break;
		case 1:
			//Up
			return [0,-4,-4]
			break;
		case 2:
			//left
			return [1,-4,-4]
			break;
		case 3:
			//down
			return [2,-4,-4]
			break;
		case 4:
			//right
			return [3,-4,-4]
			break;
		case 5:
			//Up-Left
			return [0,1,-4]
			break;
		case 6:
			//Up-Down
			return [0,2,-4]
			break;
		case 7:
			//Up-Right
			return [0,3,-4]
			break;
		case 8:
			//Left-Down
			return [1,2,-4]
			break;
		case 9:
			//Left-Right
			return [1,3,-4]
			break;
		case 10:
			//Down-Right
			return [2,3,-4]
			break;
		case 11:
			//Up-Left-Down
			return [0,1,2]
			break;
		case 12:
			//Left-Down-Right
			return [1,2,3]
			break;
		case 13:
			//Down-right-up
			return [2,3,0]
			break;
		case 14:
			//Right-Up-Left
			return [3,0,1]
			break;
		case 15:
			//Create Room
			return [5,-4,-4]
			break;		
	}
	return [-4,-4,-4]
}
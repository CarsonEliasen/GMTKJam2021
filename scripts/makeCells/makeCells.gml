// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeCells(width, height){
	var cellWidth = sprite_get_height(sCell)
	for(var col = 0; col < width; col++){
		for(var row = 0; row < height; row++){
			//Get X,Y coords in room
			var posX = row * cellWidth
			var posY = col * cellWidth
			//Create Cells
			var cell = instance_create_depth(posX, posY, depth, oCell)
			//Create a wall
			var wall = instance_create_depth(posX, posY, depth, oWall)	
			if((col == 0 or row == 0) or (row == height-1 or col == width-1)){
				wall.edge = true	
			} else{
				wall.edge = false	
			}
			array_push(cell.contains, wall)
			//Create Fog
			instance_create_depth(posX, posY, depth-1, oFog)	
		}
	}
}
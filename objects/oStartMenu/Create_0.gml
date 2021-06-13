tutorial = false
var cellH = sprite_get_height(sCell)
height = room_width/cellH - 2
width = room_height/cellH - 1
for(var col = 0; col < width; col++){
	for(var row = 0; row < height; row++){
		//Get X,Y coords in room
		var posX = row * cellH + cellH
		var posY = col * cellH + cellH
		//Create Cells
		instance_create_depth(posX, posY, depth, oCell)
		//Create a wall
		if((col == 0 or row == 0) or (row == height-1 or col == width-1)){
			var wall = instance_create_depth(posX, posY, depth, oWall)
			wall.edge = true	
		}
	}
}
instance_create_depth(room_width/2, room_height/2, depth-1, oButtonStartGame)
var spacing = oButtonStartGame.height * 1.25
instance_create_depth(room_width/2, room_height/2 + spacing, depth-1, oButtonTutorial)
instance_create_depth(room_width/2, room_height/2 + spacing*2, depth-1, oButtonQuit)
if(!instance_exists(oJukeBox)){
	instance_create_depth(x,y, depth, oJukeBox)
}
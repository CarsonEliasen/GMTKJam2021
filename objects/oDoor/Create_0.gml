var nearWall = instance_nearest(x,y,oWall)
if(position_meeting(x,y,nearWall)){
	instance_destroy(nearWall)
}

createButtons = true
range = 5 * sprite_get_width(sCell)
playerProx = true
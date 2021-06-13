var nearWall = instance_nearest(x,y,oWall)
if(position_meeting(x,y,nearWall)){
	instance_destroy(nearWall)
}

createButtons = true
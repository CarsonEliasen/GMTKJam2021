// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoorSpawning(levelDims){
	show_debug_message("DOOR GEN")
	var cellH = sprite_get_height(sCell)
	var spawnX = irandom_range(1,levelDims[0]-1) * cellH
	var spawnY = irandom_range(1,levelDims[1]-1) * cellH
	var memberX = 0;
	var memberY = 0;
	for(var member = 0; member < array_length(oPlayer.party); member++){
		if(oPlayer.party[member] != -4){
			memberX = oPlayer.party[member].x
			memberX = oPlayer.party[member].y
		}
	}
	while(true){
		spawnX = irandom_range(1,levelDims[0]-1) * cellH
		spawnY = irandom_range(1,levelDims[1]-1) * cellH
		if(!position_meeting(spawnX, spawnY, oWall) and point_distance(spawnX, spawnY, memberX, memberY) > (cellH * 15)){
			var nearWall = instance_nearest(spawnX, spawnY, oWall)
			if(point_distance(spawnX, spawnY, nearWall.x, nearWall.y) <= cellH){
				spawnX = nearWall.x
				spawnY = nearWall.y
				if(!position_meeting(spawnX+cellH, spawnY, oWall) or !position_meeting(spawnX-cellH, spawnY, oWall) or !position_meeting(spawnX, spawnY-cellH, oWall) or !position_meeting(spawnX, spawnY+cellH, oWall)){
					instance_destroy(nearWall)
					break;
				}
			}
		}
	}
	instance_create_depth(spawnX, spawnX, depth, oDoor)
}
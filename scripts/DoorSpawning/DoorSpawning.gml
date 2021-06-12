// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoorSpawning(levelDims){
	show_debug_message("DOOR GEN")
	var cellH = sprite_get_height(sCell)
	var spawnX = irandom_range(1,levelDims[0]-1) * cellH
	var spawnY = irandom_range(1,levelDims[1]-1) * cellH
	var checkMember = noone
	for(var member = 0; member < array_length(oPlayer.party); member++){
		if(oPlayer.party[member] != -4){
			checkMember = oPlayer.party[member]
		}
	}
	while(true){
		spawnX = irandom_range(1,levelDims[0]-1) * cellH
		spawnY = irandom_range(1,levelDims[1]-1) * cellH
		if(!position_meeting(spawnX, spawnY, oWall) and !position_meeting(spawnX, spawnY, checkMember)){
				spawnX = irandom_range(1,levelDims[0]-1) * cellH
				spawnY = irandom_range(1,levelDims[1]-1) * cellH
				break
		}
	}
	instance_create_depth(spawnX, spawnX, depth, oDoor)
}
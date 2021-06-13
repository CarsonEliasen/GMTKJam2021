// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrangerSpawning(levelDims, level){
	var spawnStranger = irandom(99)
	if(level mod 3 == 0){
		spawnStranger = 0	
	}
	if(spawnStranger == 0){
		var cellH = sprite_get_height(sCell)
		var spawnX = irandom_range(1,levelDims[0]-1) * cellH
		var spawnY = irandom_range(1,levelDims[1]-1) * cellH
		while(position_meeting(spawnX, spawnY, oCellOccupier)){
			var spawnX = irandom_range(1,levelDims[0]-1) * cellH
			var spawnY = irandom_range(1,levelDims[1]-1) * cellH
		}
		instance_create_depth(spawnX, spawnY, depth, oStrangerCharacter)
	}
}
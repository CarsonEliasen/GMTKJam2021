// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function characterRelication(levelDims){
	//Find postition for party member
	for(var member = 0; member < array_length(oPlayer.party)-1; member++)
		if(oPlayer.party[member] != -4){
				var cellH = sprite_get_height(sCell)
				var spawnX = cellH
				var spawnY = cellH
				while(position_meeting(spawnX, spawnY, oCellOccupier)){
					var spawnX = (spawnX + cellH) mod (levelDims[0] * cellH)
					var spawnY = (spawnY + cellH) mod (levelDims[0] * cellH)
				}
				oPlayer.party[member].x = spawnX
				oPlayer.party[member].y = spawnY
		}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CraftingSpawning(levelDims){
	var numStations = irandom_range(0, level)
	//var numStations = irandom_range(1, 1.5 * (level+1))
	while(numStations > 0){
		var cellH = sprite_get_height(sCell)
		var spawnX = irandom_range(1,levelDims[0]-1) * cellH
		var spawnY = irandom_range(1,levelDims[1]-1) * cellH
		var stationSpawn = craftingStations[irandom(array_length(monsters)-1)];
		var nearWall = instance_nearest(spawnX, spawnY, oWall)
		if(nearWall.x != spawnX and nearWall.y != spawnY){
			if(sqrt((nearWall.x-spawnX)*(nearWall.x-spawnX)  + (nearWall.y-spawnY)*(nearWall.y-spawnY))<cellH*1.5){
				instance_create_depth(spawnX, spawnY, depth, stationSpawn)
				numStations--
			}
		}
	}
}
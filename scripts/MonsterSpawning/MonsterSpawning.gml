// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MonsterSpawning(levelDims){
	var numMonsters = irandom_range(6 + level, 6 + level * 4)
	while(numMonsters > 0){
		var cellH = sprite_get_height(sCell)
		var spawnX = irandom_range(1,levelDims[0]-1) * cellH
		var spawnY = irandom_range(1,levelDims[1]-1) * cellH
		var monsterSpawn = monsters[irandom(array_length(monsters)-1)];
		var nearWall = instance_nearest(spawnX, spawnY, oWall)
		if(nearWall.x != spawnX and nearWall.y != spawnY){
			var monster = instance_create_depth(spawnX, spawnY, depth, monsterSpawn)
			var xpGain = monster.baseXP + monster.XPIncrease * level
			monster.xp += irandom_range(xpGain * .8, xpGain * 1.2)
			numMonsters--
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateLevel(level){
	//Reset Seed
	randomize()
	//Get Level Dimensions
	var levelDims = getLevelDims(level)
	//Set Camera Max Dims
	oCamera.camMaxHeight = (levelDims[1]-1) * sprite_get_height(sCell)
	oCamera.camMaxWidth  = (levelDims[0]-1) * sprite_get_height(sCell)
	//Make Cells
	//var rowAmount = irandom_range(levelDims[0], levelDims[1])
	//var colAmount = irandom_range(levelDims[2], levelDims[3])
	var rowAmount = 32
	var colAmount = 32
	makeCells(rowAmount,colAmount, true)
	levelDims = [colAmount, rowAmount]
	//Generate Rooms
	generateChambers(level, [colAmount, rowAmount])
	//Generate Monsters
	MonsterSpawning(levelDims)
	//GenerateCrafting
	CraftingSpawning(levelDims)
	//GenerateTreasure
	//Relocate Characters
	characterRelication(levelDims)
	StrangerSpawning(levelDims, level)
	//Make Door
	if(level != 15){
		DoorSpawning(levelDims)
	}
	//Make Boss
	if(level == 15){
		SpawnBoss()
	}
	//Increment Level
	oLevelGenerator.level = oLevelGenerator.level + 1
	//Return Dims
	return levelDims
}
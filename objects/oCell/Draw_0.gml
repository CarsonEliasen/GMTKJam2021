var nearest_character = instance_nearest(x, y, oCharacter)
var nearest_wall = instance_nearest(x, y, oWall)
var nearest_monster = instance_nearest(x, y, oParentMonster)
if (nearest_character != noone and nearest_character.x == x and nearest_character.y == y) {
	
} else if (nearest_wall != noone and nearest_wall.x == x and nearest_wall.y == y) {
	
} else if (nearest_monster != noone and nearest_monster.x == x and nearest_monster.y == y) {
	
}
else {
	drawBlockText(".", c_dkgray)
}
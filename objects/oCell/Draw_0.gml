var nearest_character = instance_nearest(x, y, oCharacter)
var nearest_wall = instance_nearest(x, y, oWall)
if (nearest_character != noone and nearest_character.x == x and nearest_character.y == y) {
	
} else if (nearest_wall != noone and nearest_wall.x == x and nearest_wall.y == y) {
	
}
else {
	drawBlockText(".", c_dkgray)
}
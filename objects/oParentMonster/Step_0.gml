if (hp <= 0) {
	instance_destroy(id)
	oPlayer.xp += xp
}
var nearest_character = instance_nearest(x, y, oCharacter)
if (distance_to_object(nearest_character) < aggro_range) {
	xTo = nearest_character.x
	yTo = nearest_character.y
} else {
	xTo = x
	yTo = y
}
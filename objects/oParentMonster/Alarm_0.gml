var nearest_character = instance_nearest(x, y, oCharacter)
var cell_size = sprite_get_height(sCell)
var dist_x = abs(x - nearest_character.x)
var dist_y = abs(y - nearest_character.y)
if (dist_x <= cell_size and dist_y <= cell_size) {
	// attack
	audio_play_sound(soundHitHurt, 11, false)
	nearest_character.hp -= dmg - nearest_character.defense
}
new_x = x + sign(xTo - x) * cellHeight
new_y = y + sign(yTo - y) * cellHeight
var nearest_occ = instance_nearest(new_x, new_y, oCellOccupier)
if (nearest_occ.x != new_x and nearest_occ.y != new_y) {
	x = new_x
	y = new_y
}
alarm[0] = 5 * room_speed
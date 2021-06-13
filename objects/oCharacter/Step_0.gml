if (hp > strength) {
	hp = strength
}
if (hp <= 0) {
	oPlayer.party[character_id - 1] = noone
	instance_destroy(id)
}
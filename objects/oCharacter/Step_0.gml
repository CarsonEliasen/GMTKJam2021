if (armor_slot != noone) {
	defense = armor_slot.defense_bonus
}
if (weapon_slot != noone) {
	damage = base_damage + weapon_slot.damage_bonus
}
if (hp > strength) {
	hp = strength
}
if (hp <= 0) {
	oPlayer.party[character_id - 1] = noone
	instance_destroy(id)
}
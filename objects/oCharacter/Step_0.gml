if (armor_slot != noone) {
	defense = armor_slot.defense_bonus
}
if (buff_slot != noone) {
	agility = base_agility + buff_slot.agility_bonus
	intelligence = base_intelligence + buff_slot.intelligence_bonus
	strength = base_strength + buff_slot.strength_bonus
}
if (weapon_slot != noone) {
	damage = base_damage + weapon_slot.damage_bonus
}
if (hp > strength) {
	hp = strength
}
if (hp <= 0) {
	oPlayer.party[character_id - 1] = noone
	instance_destroy(move_target_cell)
	instance_destroy(id)
}
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
if(magic_slot != noone){
	if(keyboard_check_pressed(ord("W")) and currSpellCD == 0 and oPlayer.selected_character == id){
		//Cast Spell
		currSpellCD = magic_slot.spellCD
		var charX = x
		var charY = y
		var dmg = magic_slot.spellDamage
		with(oParentMonster){
			if(point_distance(x,y, charX, charY) < 46){
				hp -= dmg	
			}
		}
		drawSpell = true
		audio_play_sound(soundExplosion, 12, false)
	}
}
if (hp > strength) {
	hp = strength
}
if (hp <= 0) {
	oPlayer.party[character_id - 1] = noone
	instance_destroy(move_target)
	instance_destroy(id)
}

if(currSpellCD > 0){
	currSpellCD--	
}
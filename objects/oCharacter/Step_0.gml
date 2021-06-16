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
	if(input.in[IN.spell] and currSpellCD == 0 and oPlayer.selected_character == id){
		//Cast Spell
		currSpellCD = magic_slot.spellCD
		var charX = x
		var charY = y
		var dmg = magic_slot.spellDamage
		var reset_targets = ds_list_create()
		with(oParentMonster){
			if(point_distance(x,y, charX, charY) < 46){
				hp -= dmg
				if (hp <= 0) {
					ds_list_add(reset_targets, id)
				}
			}
		}
		for (var i = 0; i < ds_list_size(reset_targets); i++) {
			var party = oPlayer.party
			for(var i = 0; i < array_length(party); i++){
				var member = party[i]
				if(member != -4 and member.attack_target == ds_list_find_value(reset_targets, i)) {
					if(member.attack_target == id){
						member.attack_target = noone
						member.move_target_cell = noone
						member.instance_destroy(member.move_target)
						member.move_target = noone
						member.move_queue = ds_queue_create()
					}
				}
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
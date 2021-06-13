// character attributes
randomize()
base_agility = irandom_range(1, 10)
base_intelligence = irandom_range(1, 10)
base_strength = irandom_range(1, 10)
agility = base_agility
intelligence = base_intelligence
strength = base_strength
base_damage = 1
// combat state
hp = strength
damage = base_damage
defense = 0
magic_slot =  instance_create_layer(x, y, layer_get_id("Characters"), oSpell)
magic_slot.spellCD = round((4 * room_speed)/(intelligence/5))
magic_slot.spellDamage = 1
weapon_slot = noone
armor_slot = noone
buff_slot = noone
consumable_slot = noone
currSpellCD = 0
spellExpandRate = 4
currSpellRadius = 0
drawSpell = false
// control state
character_id = 0
is_selected = false
attack_target = noone
recruit_target = noone
// movement state
move_target_cell = noone
move_target = noone
move_queue = ds_queue_create()
alarm[0] = (2.5 / agility) * room_speed

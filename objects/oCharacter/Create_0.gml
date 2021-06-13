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
magic_slot = noone
weapon_slot = noone
armor_slot = noone
buff_slot = noone
consumable_slot = noone
// control state
character_id = 0
is_selected = false
attack_target = noone
recruit_target = noone
// movement state
move_target_cell = noone
move_target = noone
move_queue = ds_queue_create()
alarm[0] = 0.5 * room_speed

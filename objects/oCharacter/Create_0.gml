// character attributes
agility = irandom_range(1, 10)
intelligence = irandom_range(1, 10)
strength = irandom_range(1, 10)
damage = 1
// combat state
current_health = strength
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

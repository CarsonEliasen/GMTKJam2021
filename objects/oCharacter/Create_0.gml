// control state
character_id = 0
is_selected = false
// movement state
move_target_cell = noone
move_target = noone
move_queue = ds_queue_create()
alarm[0] = 1 * room_speed
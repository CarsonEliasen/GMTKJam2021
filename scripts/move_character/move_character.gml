function move_character(character, target_cell){
	if (character.move_target != noone) {
		instance_destroy(character.move_target)
		character.move_target = noone
	}
	var start_cell = instance_nearest(character.x, character.y, oCell)
	var move_queue = ds_queue_create()
	var move_path = find_path(start_cell, target_cell)
	if (move_path == noone) {
		return
	}
	for (var i = 1; i <= ds_list_size(move_path); i++) {
		ds_queue_enqueue(move_queue, ds_list_find_value(move_path, i))
	}
	character.move_target_cell = target_cell
	character.move_target = instance_create_layer(target_cell.x, target_cell.y, layer_get_id("Cursor"), oTarget)
	character.move_queue = move_queue
}
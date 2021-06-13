function find_path(start_cell, target_cell){
	show_debug_message("finding path")
	var cell_size = start_cell.sprite_height
	// initialize a list to hold cells that have already been discovered in the search,
	// so they don't get searched more than once
	var search_discovered = ds_list_create()
	ds_list_add(search_discovered, start_cell)
	// initialize a list to hold a search path for the queue
	var search_path = ds_list_create()
	ds_list_add(search_path, start_cell)
	// initialize a queue of paths to search
	var search_queue = ds_queue_create()
	ds_queue_enqueue(search_queue, search_path)
	// begin breadth-first search
	while (!ds_queue_empty(search_queue)) {
		// pop a path from the queue
		var current_path = ds_queue_dequeue(search_queue)
		var current_cell = ds_list_find_value(current_path, ds_list_size(current_path) - 1)
		// for all possible x movements (left, none, right)...
		for (var deltax = -cell_size; deltax <= cell_size; deltax += cell_size) {
			// for all possible y movements (left, none, right)...
			for (var deltay = -cell_size; deltay <= cell_size; deltay += cell_size) {
				var search_x = current_cell.x + deltax
				var search_y = current_cell.y + deltay
				// if the x movement and y movement are both zero, that's the current cell; continue
				if (deltax == 0 and deltay == 0) {
					continue
				}
				// if the x movement and y movement are both non-zero, that's diagonal; continue
				if (deltax != 0 and deltay != 0) {
					continue
				}
				// the cell to search is the cell nearest the calculated x and y
				var search_cell = instance_nearest(search_x, search_y, oCell)
				// if the search cell is in the list of discovered cells, skip it
				if (ds_list_find_index(search_discovered, search_cell) != -1) {
					continue
				}
				// add this search cell to the list of discovered cells
				ds_list_add(search_discovered, search_cell)
				// add this search cell to a new path
				var new_path = ds_list_create()
				ds_list_copy(new_path, current_path)
				ds_list_add(new_path, search_cell)
				// if the search cell is the target cell, we're done!
				if (search_cell == target_cell) {
					show_debug_message("found path")
					return new_path
				}
				// if there is a wall at the search location, skip it
				if (position_meeting(search_x, search_y, oCellOccupier)) {
					continue
				}
				// otherwise, queue the new path and continue searching
				ds_queue_enqueue(search_queue, new_path)
			}
		}
	}
	// no path found
	show_debug_message("could not find path")
	return noone
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeCells(width, height){
	var cellWidth = sprite_get_height(sCell)
	for(var col = 0; col < width; col++){
		for(var row = 0; row < height; row++){
			instance_create_depth(row * cellWidth, col * cellWidth, depth, oCell)
			show_debug_message("creating cell")
		}
	}
}
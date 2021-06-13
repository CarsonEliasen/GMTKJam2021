var nearest_char = instance_nearest(x,y,oCharacter)
var touching = instance_exists(nearest_char) and nearest_char == oPlayer.selected_character and (x - nearest_char.x == 0) and ( y - nearest_char.y == 0)
if (touching and createButtons) {
	button = instance_create_depth(x, y-24, depth, confirm_button_type)
	button.crafter = id
	button.character = nearest_char
	createButtons = false
} else if(!touching and !createButtons){
	instance_destroy(confirm_button_type)
	createButtons = true
}
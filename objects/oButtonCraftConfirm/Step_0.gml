event_inherited()
if(keyboard_check_pressed(ord("A"))){
	show_debug_message("plus")
	if(essence < oPlayer.xp){
		essence += 1	
	}
} else if(keyboard_check_pressed(ord("S"))){
	show_debug_message("minus")
	if(essence > 0){
		essence -= 1
	}
}
text = "SHIFT: " + string(essence)
width = string_width(text) * 1.25
height = string_height(text) * 1.25
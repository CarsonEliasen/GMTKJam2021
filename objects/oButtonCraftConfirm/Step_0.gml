event_inherited()
if(keyboard_check_pressed(ord("S"))){
	show_debug_message("plus")
	if(essence < oPlayer.xp - 5){
		essence += 5	
	}
} else if(keyboard_check_pressed(ord("A"))){
	show_debug_message("minus")
	if(essence > 5){
		essence -= 5
	}
}
text = "TAB: " + string(essence)
width = string_width(text) * 1.25
height = string_height(text) * 1.25
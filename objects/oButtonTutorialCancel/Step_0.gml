event_inherited()

if(doAction){
	oStartMenu.tutorial = false
	instance_create_depth(x, y, depth, oButtonTutorial)
	audio_play_sound(soundClick2, 11, false)
	instance_destroy()
}
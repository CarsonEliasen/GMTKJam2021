event_inherited()

if(doAction){
	oStartMenu.tutorial = true
	var but = instance_create_depth(x, y, depth, oButtonTutorialCancel)
	audio_play_sound(soundClick2, 11, false)
	instance_destroy()
}
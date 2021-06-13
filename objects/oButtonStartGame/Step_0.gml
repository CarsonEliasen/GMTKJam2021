event_inherited()

if(doAction){
	room_goto_next()
	audio_play_sound(soundExplosion, 11, false)
	instance_destroy(oButtonMaster)
}
audio_play_sound(soundDeath,12,false)
var party = oPlayer.party
var gameOver = true
for(var i = 0; i < array_length(party); i++){
	if(party[i] != -4){
		gameOver = false
		oCamera.x = party[i].x
		oCamera.y = party[i].y
		oPlayer.selected_character = party[i]
		break
	}
}
if(gameOver){
	delete_persistent_objects()
	room_goto(rGameOver)
}
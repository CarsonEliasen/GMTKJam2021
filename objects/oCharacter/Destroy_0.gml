var party = oPlayer.party
var gameOver = true
for(var i = 0; i < array_length(party); i++){
	if(party[i] != -4){
		gameOver = false
		break
	}
}
if(gameOver){
	instance_destroy(oCamera)
	instance_destroy(oPlayer)
	instance_destroy(oLevelGenerator)
	instance_destroy(oUIController)
	instance_destroy(oBG)
	instance_destroy(oCursor)
	room_goto(rGameOver)
}
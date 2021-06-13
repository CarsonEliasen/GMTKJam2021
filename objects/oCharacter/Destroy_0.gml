var party = oPlayer.party
var gameOver = true
for(var i = 0; i < array_length(party); i++){
	if(party[i] != -4){
		gameOver = false
		oCamera.follow = party[i]
		oPlayer.selected_character = party[i]
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
	instance_destroy(oArmor)
	instance_destroy(oBuff)
	instance_destroy(oConsumable)
	instance_destroy(oSpell)
	instance_destroy(oWeapon)
	room_goto(rGameOver)
}
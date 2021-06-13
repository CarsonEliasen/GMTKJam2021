var nearChar = instance_nearest(x,y,oCharacter)
var party = oPlayer.party
playerProx = true
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	if(member != -4){
		var dist = point_distance(member.x, member.y, x, y)
		if(dist > range){
			playerProx = false
			break
		}
	}
}
var touching = instance_exists(nearChar) and (x-nearChar.x==0) and (y-nearChar.y==0)
if(touching and createButtons){
	instance_create_depth(x, y-24, depth, oButtonDecendConfirm)
	createButtons = false
} else if(!touching and !createButtons){
	instance_destroy(oButtonDecendConfirm)
	createButtons = true
}
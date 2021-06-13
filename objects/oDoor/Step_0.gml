var nearChar = instance_nearest(x,y,oCharacter)
var party = oPlayer.party
playerProx = true
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	if(member != -4){
		var dist = point_distance(member.x, member.y, x, y)
		if(dist > range){
			show_debug_message(member)
			show_debug_message(dist)
			show_debug_message(range)
			playerProx = false
			break
		}
	}
}
var touching = instance_exists(nearChar) and (x-nearChar.x==0) and (y-nearChar.y==0)
if(touching and createButtons){
	show_debug_message("creatingButtons")
	instance_create_depth(x, y-24, depth, oButtonDecendConfirm)
	createButtons = false
} else if(!touching and !createButtons){
	show_debug_message("reseting buttons")
	instance_destroy(oButtonDecendConfirm)
	createButtons = true
}
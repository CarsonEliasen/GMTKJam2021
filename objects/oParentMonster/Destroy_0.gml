var party = oPlayer.party
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	if(member != 0){
		var closeMember = instance_nearest(x,y,oCharacter)
		if(member == closeMember){
			member.attack_target = noone	
		}
	}
}
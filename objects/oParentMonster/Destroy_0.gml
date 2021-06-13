var party = oPlayer.party
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	if(member != -4){
		if(!instance_exists(member.attack_target)){
			member.attack_target = noone	
		}
	}
}
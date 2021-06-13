event_inherited()

var party = oPlayer.party
for(var i=0; i < array_length(party); i++){
	var member = party[i]
	if(member != -4){
		if(member.attack_target != -4 and member.attack_target == self){
			member.attack_target = noone	
		}
	}
}
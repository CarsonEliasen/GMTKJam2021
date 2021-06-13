if (is_selected) {
	drawBlockText(string(character_id), c_lime)
}
else {
	drawBlockText(string(character_id), c_white)
}

if(drawSpell){
	currSpellRadius += spellExpandRate
	draw_set_color(c_orange)
	draw_circle(x,y,currSpellRadius, true)
	if(currSpellRadius >= 46){
		currSpellRadius = 0
		drawSpell = false
	}
}
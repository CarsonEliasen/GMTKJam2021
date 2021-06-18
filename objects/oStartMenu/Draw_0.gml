if(!tutorial){
	draw_set_font(fMenu)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_text(room_width/2, room_height/3, "Escaping Wrexith")
	draw_set_font(fDef)
	draw_text(room_width/2, room_height/3 + 36, "Carson Eliasen & Dawson Eliasen")
	draw_text(room_width/2, room_height/3 + 60, "GMTK Game Jam 2021")
} else{
	draw_tutorial_text()
}
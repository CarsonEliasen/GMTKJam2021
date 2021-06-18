// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawEssence(width, height){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_fuchsia)
	draw_set_alpha(.6)
	draw_rectangle(0, 0, width, height * 0.1, false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(width / 2, height * 0.1 / 2, "Essence: " + string(oPlayer.xp))
}
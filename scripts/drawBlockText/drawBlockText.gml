// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawBlockText(string, color){
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_color(color)
	draw_text(x,y,string)
	draw_set_color(c_white)
}
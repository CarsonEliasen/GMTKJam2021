drawBlockText("[ ]", c_orange)

if(!position_meeting(x,y,oFog)){
	if(playerProx){
		draw_set_color(c_lime)
	} else{
		draw_set_color(c_orange)
	}
	draw_circle(x,y,range,true)
	draw_set_color(c_white)
}
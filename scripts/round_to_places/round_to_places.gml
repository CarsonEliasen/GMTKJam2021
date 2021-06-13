// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function round_to_places(x, n){
	show_debug_message(x)
	factor = power(10, n)
	x *= factor
	x -= frac(x)
	x /= factor
	show_debug_message(x)
	return x
}
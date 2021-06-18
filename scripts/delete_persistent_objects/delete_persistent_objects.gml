// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function delete_persistent_objects(){
	instance_destroy(oCamera)
	instance_destroy(oPlayer)
	instance_destroy(oLevelGenerator)
	instance_destroy(oUIController)
	instance_destroy(oBG)
	instance_destroy(oCursor)
	instance_destroy(oArmor)
	instance_destroy(oBuff)
	instance_destroy(oConsumable)
	instance_destroy(oSpell)
	instance_destroy(oWeapon)
}
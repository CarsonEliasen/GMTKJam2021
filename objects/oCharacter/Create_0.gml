// character attributes
randomize()
var level = oLevelGenerator.level
var agi_weight = random(10)
var int_weight = random(10)
var str_weight = random(10)
var scale = agi_weight + int_weight + str_weight
agi_weight /= scale
int_weight /= scale
str_weight /= scale
base_agility = max(1, (level * 2 + 9) * agi_weight)
base_intelligence = max(1, (level  * 2 + 9) * int_weight)
base_strength = max(1, (level * 2 + 9) * str_weight)
agility = base_agility
intelligence = base_intelligence
strength = base_strength
base_damage = 1
// combat state
hp = strength
damage = base_damage
defense = 0
magic_slot =  instance_create_layer(x, y, layer_get_id("Characters"), oSpell)
magic_slot.spellCD = round((4 * room_speed)/(intelligence/5))
magic_slot.spellDamage = 1
weapon_slot = noone
armor_slot = noone
buff_slot = noone
consumable_slot = instance_create_layer(x, y, layer_get_id("Characters"), oConsumable)
consumable_slot.hp_restore = 1
currSpellCD = 0
spellExpandRate = 4
currSpellRadius = 0
drawSpell = false
// control state
character_id = 0
is_selected = false
attack_target = noone
recruit_target = noone
// movement state
move_target_cell = noone
move_target = noone
move_queue = ds_queue_create()
alarm[0] = (2.5 / agility) * room_speed

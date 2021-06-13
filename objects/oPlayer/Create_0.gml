// game state
xp = 0
// character party state
party = array_create(5, noone)
party[0] = instance_create_layer(x, y, layer_get_id("Characters"), oCharacter)
party[0].character_id = 1
party[0].agility = 3
party[0].intelligence = 3
party[0].strength = 3
selected_character = party[0]
selected_character.is_selected = true
oCamera.follow = selected_character
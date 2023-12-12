advancement revoke @s only crossbow_fix:mainhand

data modify storage crossbow_fix:data temp.crossbow set from entity @s SelectedItem
data modify storage crossbow_fix:data temp.crossbow.tag.ChargedProjectiles[{}].Count set value 1b

execute if data storage crossbow_fix:data temp.crossbow.Enchantments:[{id:"minecraft:multishot"}] run function crossbow_fix:calc
function crossbow_fix:replace/mainhand with storage crossbow_fix:data temp.crossbow

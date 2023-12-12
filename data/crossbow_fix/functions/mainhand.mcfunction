advancement revoke @s only crossbow_fix:mainhand

data modify storage crossbow_fix:data temp.crossbow set from entity @s SelectedItem
function crossbow_fix:calc
function crossbow_fix:replace/mainhand with storage crossbow_fix:data temp.crossbow

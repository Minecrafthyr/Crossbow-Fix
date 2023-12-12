advancement revoke @s only crossbow_fix:offhand

data modify storage crossbow_fix:data temp.crossbow set from entity @s Inventory[{Slot:-106b}]
function crossbow_fix:calc
function crossbow_fix:replace/offhand with storage crossbow_fix:data temp.crossbow

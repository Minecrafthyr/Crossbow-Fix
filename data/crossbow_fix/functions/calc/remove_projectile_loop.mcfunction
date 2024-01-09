data remove storage crossbow_fix:data _.crossbow.tag.ChargedProjectiles[-1]
scoreboard players remove projectiles_count crossbow_fix..temp 1
execute unless score projectiles_count crossbow_fix..temp matches 1.. run return 1

function crossbow_fix:calc/remove_projectile_loop
execute store result score projectiles_count crossbow_fix..temp run data get storage crossbow_fix:data _.crossbow.tag.ChargedProjectiles
execute store result storage crossbow_fix:data _.projectile.Count byte 1 run scoreboard players remove projectiles_count crossbow_fix..temp 1

execute unless data storage crossbow_fix:data _.projectile.tag run data modify storage crossbow_fix:data _.projectile.tag set value ""


execute store result score cleared_count crossbow_fix..temp run function crossbow_fix:calc/clear with storage crossbow_fix:data _.projectile
scoreboard players operation projectiles_count crossbow_fix..temp -= cleared_count crossbow_fix..temp

execute unless score projectiles_count crossbow_fix..temp matches 1.. run return 1

function crossbow_fix:calc/remove_projectile_loop
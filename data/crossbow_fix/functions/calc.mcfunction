data modify storage crossbow_fix:data temp.projectile set from storage crossbow_fix:data temp.crossbow.tag.ChargedProjectiles[0]
execute store result score projectiles_count crossbow_fix..temp run data get storage crossbow_fix:data temp.crossbow.tag.ChargedProjectiles
data modify storage crossbow_fix:data temp.crossbow.tag.ChargedProjectiles[{}].Count set value 1b

execute if score projectiles_count crossbow_fix..temp matches 1.. if entity @s[gamemode=!creative] run function crossbow_fix:calc/clear_count

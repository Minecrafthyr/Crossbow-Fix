data modify storage crossbow_fix:data _.projectile set from storage crossbow_fix:data _.crossbow.tag.ChargedProjectiles[0]
execute store result score projectiles_count crossbow_fix..temp run data get storage crossbow_fix:data _.crossbow.tag.ChargedProjectiles
execute if score projectiles_count crossbow_fix..temp matches 1.. if entity @s[gamemode=!creative] run function crossbow_fix:calc/clear_count

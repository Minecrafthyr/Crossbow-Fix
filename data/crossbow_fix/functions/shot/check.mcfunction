tag @s add crossbow_fix.checked

execute on origin if entity @s[gamemode=creative] run return fail

data modify entity @s pickup set value 1b
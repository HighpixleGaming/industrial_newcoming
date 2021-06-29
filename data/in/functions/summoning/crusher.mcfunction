execute if entity @s[tag=crusherCloud,tag=!summoned] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["crusherStand","inCustomBlockStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute if entity @s[tag=crusherCloud] run tag @s add summoned
execute if entity @s[tag=crusherStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:crusher/place
execute if entity @s[tag=crusherStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:crusher/failed_place
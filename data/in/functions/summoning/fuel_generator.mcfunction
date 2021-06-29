#Check#
execute if entity @s[tag=fuelGeneratorCloud,tag=!summoned] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["fuelGeneratorStand","inCustomBlockStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute if entity @s[tag=fuelGeneratorCloud] run tag @s add summoned
execute if entity @s[tag=fuelGeneratorStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:fuel_generator/place
execute if entity @s[tag=fuelGeneratorStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:fuel_generator/failed_place
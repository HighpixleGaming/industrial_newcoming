#Detect when there is coal#
execute if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye",Count:64b}]} run function in:fuel_generator/generate

#Remove Tags And Reset Timer#
execute if entity @s[tag=generating] at @s unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=generating] at @s if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye",Count:64b}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=generating] at @s unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} run tag @s remove generating
execute if entity @s[tag=generating] at @s if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye",Count:64b}]} run tag @s remove generating
execute if entity @s[tag=!generating] run data modify block ~ ~1 ~ BurnTime set value 0

#Drop Items Going Into Slot 0#
execute unless block ~ ~1 ~ blast_furnace{Items:[{Slot:0b,id:"minecraft:red_stained_glass_pane"}]} if block ~ ~1 ~ blast_furnace{Items:[{Slot:0b}]} run function in:drop/0
execute unless block ~ ~1 ~ blast_furnace{Items:[{Slot:0b,id:"minecraft:red_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:0b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
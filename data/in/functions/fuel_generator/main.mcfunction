#Detect when there is coal#
execute if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} run function in:fuel_generator/generate

#Remove Coal When Done Generating#
execute if entity @s[tag=!generating] if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:coal"}].Count
execute if entity @s[tag=!generating] if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} run scoreboard players remove @s inItemCount 1
execute if entity @s[tag=!generating] if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} store result block ~ ~1 ~ Items[{id:"minecraft:coal"}].Count byte 1 run scoreboard players get @s inItemCount
execute if entity @s[tag=!generating] if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} run scoreboard players reset @s inItemCount
execute if entity @s[tag=!generating] if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} run data modify block ~ ~1 ~ Items[{Slot:1b}].Count set value 0

#Remove Tags And Reset Timer#
execute if entity @s[tag=generating] at @s unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=generating] at @s if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=generating] at @s unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} run tag @s remove generating
execute if entity @s[tag=generating] at @s if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald",Count:64b}]} run tag @s remove generating
execute if entity @s[tag=!generating] run data modify block ~ ~1 ~ BurnTime set value 0

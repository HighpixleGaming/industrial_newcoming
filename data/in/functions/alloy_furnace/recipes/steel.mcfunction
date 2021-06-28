#Add Tag And Start Timer#
scoreboard players set @s[tag=!generating] inTimer 60
tag @s[scores={inTimer=60}] add generating
execute if score @s inTimer matches 1.. run scoreboard players remove @s inTimer 1

#Remove Iron and Graphite When Timer Hits 0#
execute if score @s inTimer matches ..0 store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:3b}].Count
execute if score @s inTimer matches ..0 run scoreboard players remove @s inItemCount 1
execute if score @s inTimer matches ..0 store result block ~ ~1 ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 run scoreboard players reset @s inItemCount

execute if score @s inTimer matches ..0 store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:5b}].Count
execute if score @s inTimer matches ..0 run scoreboard players remove @s inItemCount 1
execute if score @s inTimer matches ..0 store result block ~ ~1 ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 run scoreboard players reset @s inItemCount

#Add 1 Steel When Timer Hits 0#
execute if score @s inTimer matches ..0 if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b}}]} store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:22b}].Count
execute if score @s inTimer matches ..0 if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b}}]} run scoreboard players add @s inItemCount 1
execute if score @s inTimer matches ..0 if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b}}]} store result block ~ ~1 ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b}}]} run scoreboard players reset @s inItemCount
execute if score @s inTimer matches ..0 unless block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b}}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:22b,id:"iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Steel","color":"gray","italic":false}',Lore:['{"text":"A Stong Metal Commonly","color":"blue","italic":false}','{"text":"Used to Build Machines","color":"blue","italic":false}']},inSteel:1b}}

#Remove 1 IF When Timer Hits 0#
execute if score @s inTimer matches ..0 run scoreboard players remove @s ifPower 1

#Remove Tag and Reset Timer#
execute if score @s inTimer matches ..0 run tag @s remove generating
execute if score @s inTimer matches ..0 run scoreboard players reset @s inTimer
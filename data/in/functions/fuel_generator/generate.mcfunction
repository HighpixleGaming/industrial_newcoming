#Add Tag And Start Timer#
scoreboard players set @s[tag=!generating] inTimer 60
tag @s[scores={inTimer=60}] add generating
execute if score @s inTimer matches 1.. run data modify block ~ ~1 ~ BurnTime set value 800
execute if score @s inTimer matches 1.. run scoreboard players remove @s inTimer 1

#Remove 1 Coal When Timer Hits 0#
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} run data modify block ~ ~1 ~ Items[{Slot:1b}].Count set value 0
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:1b,id:"minecraft:coal"}].Count
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} run scoreboard players remove @s inItemCount 1
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} unless block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal",Count:1b}]} store result block ~ ~1 ~ Items[{id:"minecraft:coal"}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:1b,id:"minecraft:coal"}]} run scoreboard players reset @s inItemCount

#Add 1 Charge T1 When Timer Hits 0#
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye"}]} store result score @s inItemCount run data get block ~ ~1 ~ Items[{id:"minecraft:lime_dye"}].Count
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye"}]} run scoreboard players add @s inItemCount 1
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye"}]} store result block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:lime_dye"}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye"}]} run scoreboard players reset @s inItemCount
execute if score @s inTimer matches ..0 unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:lime_dye"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:2b,id:"minecraft:lime_dye",Count:1b,tag:{display:{Name:'{"text":"IF Charge T1","color":"red","italic":false}',Lore:['{"text":"The Form of Power Used by","color":"green","italic":false}','{"text":"Industrial Newcoming Machines","color":"green","italic":false}']},chargeT1:1b,HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:0s}]}}
execute if score @s inTimer matches ..0 run tag @s remove generating
execute if score @s inTimer matches ..0 run scoreboard players reset @s inTimer
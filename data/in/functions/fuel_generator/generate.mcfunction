scoreboard players set @s[tag=!generating] inTimer 60
tag @s[scores={inTimer=60}] add generating
execute if score @s inTimer matches 1.. run data modify block ~ ~1 ~ BurnTime set value 800
execute if score @s inTimer matches 1.. run scoreboard players remove @s inTimer 1
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald"}]} store result score @s inItemCount run data get block ~ ~1 ~ Items[{id:"minecraft:emerald"}].Count
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald"}]} run scoreboard players add @s inItemCount 1
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald"}]} store result block ~ ~1 ~ Items[{Slot:2b,id:"minecraft:emerald"}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 if block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald"}]} run scoreboard players reset @s inItemCount
execute if score @s inTimer matches ..0 unless block ~ ~1 ~ blast_furnace{Items:[{Slot:2b,id:"minecraft:emerald"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:2b,id:"minecraft:emerald",Count:1b,tag:{display:{Name:'{"text":"IF Charge T1","color":"red","italic":false}',Lore:['{"text":"The Form of Power Used by","color":"green","italic":false}','{"text":"Industrial Newcoming Machines","color":"green","italic":false}']},chargeT1:1b}}
execute if score @s inTimer matches ..0 run tag @s remove generating
execute if score @s inTimer matches ..0 run scoreboard players reset @s inTimer



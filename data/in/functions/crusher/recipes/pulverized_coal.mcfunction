#Start Timer#
scoreboard players set @s[tag=!procCoal] inTimer 80
execute if score @s inTimer matches 80 run tag @s add procCoal
execute if score @s inTimer matches 1.. run scoreboard players remove @s inTimer 1

#Remove 1 Coal When Timer Is Up#
execute if score @s inTimer matches ..0 store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:0b}].Count
execute if score @s inTimer matches ..0 run scoreboard players remove @s inItemCount 1
execute if score @s inTimer matches ..0 store result block ~ ~1 ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 run scoreboard players reset @s inItemCount

#Add One Pulverized Coal When Timer Is Up#
execute if score @s inTimer matches ..0 if block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye"}]} store result score @s inItemCount run data get block ~ ~1 ~ Items[{Slot:2b}].Count
execute if score @s inTimer matches ..0 if block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye"}]} run scoreboard players add @s inItemCount 1
execute if score @s inTimer matches ..0 if block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye"}]} store result block ~ ~1 ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s inItemCount
execute if score @s inTimer matches ..0 if block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye"}]} run scoreboard players reset @s inItemCount
execute if score @s inTimer matches ..0 unless block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:2b,id:"black_dye",Count:1b,tag:{display:{Name:'{"text":"Pulverized Coal","color":"gray","italic":false}'},inPulverizedCoal:1b}}

#Remove Tags And Reset Timer#
execute if score @s inTimer matches ..0 run tag @s remove procCoal
execute if score @s inTimer matches ..0 run function in:lose_power
execute if score @s inTimer matches ..0 run scoreboard players reset @s inTimer
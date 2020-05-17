scoreboard players set @s[tag=!generating] inTimer 60
tag @s[scores={inTimer=60}] add generating]
execute if score @s inTimer matches 1.. run scoreboard players remove @s inTimer 1
execute if score @s inTimer matches ..0 run data modify block ~ ~1 ~ Items set value null
execute if score @s inTimer matches ..0 run data modify block ~ ~1 ~ Items set value [{Slot:2b,id:"minecraft:black_dye",Count:1b,tag:{pulverizedCoal:1b,display:{Name:'{"text":"Pulverized Coal","color":"yellow"}'}}}]
execute if score @s inTimer matches ..0 run tag @s remove generating
execute if score @s inTimer matches ..0 run scoreboard players reset @s inTimer

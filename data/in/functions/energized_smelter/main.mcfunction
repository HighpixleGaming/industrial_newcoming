#Break Block#
execute at @s if block ~ ~1 ~ air run function in:energized_smelter/broken

#Powering And Displaying Power#
execute if entity @e[tag=chargeT1,distance=..2,nbt={Item:{Count:1b}}] if entity @s[tag=!powered] run function in:energized_smelter/gain_power_t1
execute as @p at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=energizedSmelterStand,tag=powered] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] as @e[sort=nearest,limit=1,type=!player,tag=energizedSmelterStand,tag=powered] run function in:display_power
###Recipes###

#Graphite#
execute if entity @s[tag=powered] if block ~ ~1 ~ furnace{Items:[{Slot:0b,id:"minecraft:black_dye",tag:{inPulverizedCoal:1b}}]} unless block ~ ~1 ~ furnace{Items:[{Slot:2b,id:"minecraft:flint",Count:64b}]} run function in:energized_smelter/recipes/graphite
execute if entity @s[tag=procPulvCoal] unless block ~ ~1 ~ furnace{Items:[{Slot:0b,id:"minecraft:black_dye"}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=procPulvCoal] if block ~ ~1 ~ furnace{Items:[{Slot:2b,id:"minecraft:flint",Count:64b}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=procPulvCoal] unless block ~ ~1 ~ furnace{Items:[{Slot:0b,id:"minecraft:black_dye"}]} run tag @s remove procPulvCoal
execute if entity @s[tag=procPulvCoal] if block ~ ~1 ~ furnace{Items:[{Slot:2b,id:"minecraft:flint",Count:64b}]} run tag @s remove procPulvCoal
##################

#Clearing Slot 1#
execute unless block ~ ~1 ~ furnace{Items:[{Slot:1b,id:"minecraft:red_stained_glass_pane"}]} if block ~ ~1 ~ furnace{Items:[{Slot:1b}]} run function in:drop/1
execute unless block ~ ~1 ~ furnace{Items:[{Slot:1b,id:"minecraft:red_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:1b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}

#Modifying Data Based On IF#
execute if entity @s[scores={ifPower=1..}] run function in:block_modifiers
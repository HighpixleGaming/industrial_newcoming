#Powering And Displaying Power#
execute if entity @e[tag=chargeT1,distance=..2,nbt={Item:{Count:1b}}] if entity @s[tag=!powered] run function in:energized_smelter/gain_power_t1
execute as @p at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=energizedSmelterStand,tag=powered] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run tag @e[tag=energizedSmelterStand,limit=1,sort=nearest] add display
execute if entity @s[tag=display] run function in:display_power
execute if entity @s[tag=display] run tag @s add display2
execute if entity @s[tag=!display2,tag=display] tag @s remove display
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
execute if entity @s[scores={ifPower=16}] run data modify block ~ ~1 ~ BurnTime set value 160
execute if entity @s[scores={ifPower=15}] run data modify block ~ ~1 ~ BurnTime set value 150
execute if entity @s[scores={ifPower=14}] run data modify block ~ ~1 ~ BurnTime set value 140
execute if entity @s[scores={ifPower=13}] run data modify block ~ ~1 ~ BurnTime set value 130
execute if entity @s[scores={ifPower=12}] run data modify block ~ ~1 ~ BurnTime set value 120
execute if entity @s[scores={ifPower=11}] run data modify block ~ ~1 ~ BurnTime set value 110
execute if entity @s[scores={ifPower=10}] run data modify block ~ ~1 ~ BurnTime set value 100
execute if entity @s[scores={ifPower=9}] run data modify block ~ ~1 ~ BurnTime set value 90
execute if entity @s[scores={ifPower=8}] run data modify block ~ ~1 ~ BurnTime set value 80
execute if entity @s[scores={ifPower=7}] run data modify block ~ ~1 ~ BurnTime set value 70
execute if entity @s[scores={ifPower=6}] run data modify block ~ ~1 ~ BurnTime set value 60
execute if entity @s[scores={ifPower=5}] run data modify block ~ ~1 ~ BurnTime set value 50
execute if entity @s[scores={ifPower=4}] run data modify block ~ ~1 ~ BurnTime set value 40
execute if entity @s[scores={ifPower=3}] run data modify block ~ ~1 ~ BurnTime set value 30
execute if entity @s[scores={ifPower=2}] run data modify block ~ ~1 ~ BurnTime set value 20
execute if entity @s[scores={ifPower=1}] run data modify block ~ ~1 ~ BurnTime set value 10
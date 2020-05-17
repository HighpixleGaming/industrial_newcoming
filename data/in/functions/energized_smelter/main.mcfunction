#Powering And Displaying Power#
execute if entity @e[tag=chargeT1,distance=..2,nbt={Item:{Count:1b}}] if entity @s[tag=!powered] run function in:energized_smelter/gain_power_t1
execute as @p at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=energizedSmelterStand,tag=powered,tag=!displaying] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] run function in:display_power

###Recipes###

#Graphite#
execute unless block ~ ~1 ~ furnace{Items:[{Slot:0b,id:"minecraft:black_dye",Count:1b,tag:{pulverizedCoal:1b}}]} run data modify block ~ ~1 ~ Items set value [{Slot:1b,id:"minecraft:barrier",Count:1b,tag:{inBarrier:1b,display:{Name:'{"text":" "}'}}}]
execute if block ~ ~1 ~ furnace{Items:[{Slot:0b,id:"minecraft:black_dye",Count:1b,tag:{pulverizedCoal:1b}}]} run function in:energized_smelter/recipes/graphite

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
#Break Block#
execute at @s if block ~ ~1 ~ air run function in:crusher/broken

#Powering And Displaying Power#
execute if entity @e[tag=chargeT1,distance=..2,nbt={Item:{Count:1b}}] if entity @s[tag=!powered] run function in:crusher/gain_power_t1
execute as @p at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=crusherStand,tag=powered] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] as @e[sort=nearest,limit=1,type=!player,tag=crusherStand,tag=powered] run function in:display_power

###Recipes###

#Pulverized Coal#
execute if entity @s[tag=powered] if block ~ ~1 ~ smoker{Items:[{Slot:0b,id:"minecraft:coal"}]} unless block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye",Count:64b}]} run function in:crusher/recipes/pulverized_coal
execute if entity @s[tag=procCoal] unless block ~ ~1 ~ smoker{Items:[{Slot:0b,id:"minecraft:coal"}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=procCoal] if block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye",Count:64b}]} run scoreboard players reset @s inTimer
execute if entity @s[tag=procCoal] unless block ~ ~1 ~ smoker{Items:[{Slot:0b,id:"minecraft:coal"}]} run tag @s remove procCoal
execute if entity @s[tag=procCoal] if block ~ ~1 ~ smoker{Items:[{Slot:2b,id:"minecraft:black_dye",Count:64b}]} run tag @s remove procCoal
########################

#Drop Items In Slot 1#
execute unless block ~ ~1 ~ smoker{Items:[{Slot:1b,id:"minecraft:red_stained_glass_pane"}]} if block ~ ~1 ~ smoker{Items:[{Slot:1b}]} run function in:drop/1
execute unless block ~ ~1 ~ smoker{Items:[{Slot:1b,id:"minecraft:red_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:1b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}

#BurnTime Display Using IF#
execute if entity @s[scores={ifPower=1..}] run function in:block_modifiers
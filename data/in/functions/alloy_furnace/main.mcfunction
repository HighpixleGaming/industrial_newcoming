#Break Block#
execute at @s if block ~ ~1 ~ air run function in:alloy_furnace/broken

#Powering And Displaying Power#
execute if entity @e[tag=chargeT1,distance=..2,nbt={Item:{Count:1b}}] if entity @s[tag=!powered] run function in:energized_smelter/gain_power_t1
execute as @p at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=!player,tag=alloyFurnaceStand,tag=powered] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.2] as @e[sort=nearest,limit=1,type=!player,tag=alloyFurnaceStand,tag=powered] run function in:display_power
execute if entity @s[tag=powered,scores={ifPower=0}] run tag @s remove powered

###Recipes###

##Steel##
execute if entity @s[tag=powered] if block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"}]} if block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:flint",tag:{inGraphite:1b}}]} unless block ~ ~1 ~ barrel{Items:[{Slot:22b}]} run function in:alloy_furnace/recipes/steel
execute if entity @s[tag=powered] if block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"}]} if block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:flint",tag:{inGraphite:1b}}]} if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b}}]} run function in:alloy_furnace/recipes/steel

#Remove Tags and Reset Timer#
execute unless block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"}]} run scoreboard players reset @s inTimer
execute unless block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:flint",tag:{inGraphite:1b}}]} run scoreboard players reset @s inTimer
execute if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b},Count:64b}]} run scoreboard players reset @s inTimer
execute unless block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"}]} run tag @s remove generating
execute unless block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:flint",tag:{inGraphite:1b}}]} run tag @s remove generating
execute if block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:iron_ingot",tag:{inSteel:1b},Count:64b}]} run tag @s remove generating

#######################

#Clearing Slots#
execute unless block ~ ~1 ~ barrel{Items:[{Slot:0b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:0b}]} run function in:drop/0
execute unless block ~ ~1 ~ barrel{Items:[{Slot:0b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:0b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:1b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:1b}]} run function in:drop/1
execute unless block ~ ~1 ~ barrel{Items:[{Slot:1b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:1b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:2b}]} run function in:drop/2
execute unless block ~ ~1 ~ barrel{Items:[{Slot:2b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:2b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
#execute unless block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:3b}]} run function in:drop/3
#execute unless block ~ ~1 ~ barrel{Items:[{Slot:3b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:3b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:4b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:4b}]} run function in:drop/4
execute unless block ~ ~1 ~ barrel{Items:[{Slot:4b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:4b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
#execute unless block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:5b}]} run function in:drop/5
#execute unless block ~ ~1 ~ barrel{Items:[{Slot:5b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:5b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:6b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:6b}]} run function in:drop/6
execute unless block ~ ~1 ~ barrel{Items:[{Slot:6b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:6b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:7b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:7b}]} run function in:drop/7
execute unless block ~ ~1 ~ barrel{Items:[{Slot:7b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:7b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:8b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:8b}]} run function in:drop/8
execute unless block ~ ~1 ~ barrel{Items:[{Slot:8b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:8b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:9b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:9b}]} run function in:drop/9
execute unless block ~ ~1 ~ barrel{Items:[{Slot:9b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:9b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:10b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:10b}]} run function in:drop/10
execute unless block ~ ~1 ~ barrel{Items:[{Slot:10b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:10b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:11b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:11b}]} run function in:drop/11
execute unless block ~ ~1 ~ barrel{Items:[{Slot:11b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:11b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:12b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:12b}]} run function in:drop/12
execute unless block ~ ~1 ~ barrel{Items:[{Slot:12b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:12b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:13b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:13b}]} run function in:drop/13
execute unless block ~ ~1 ~ barrel{Items:[{Slot:13b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:13b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:14b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:14b}]} run function in:drop/14
execute unless block ~ ~1 ~ barrel{Items:[{Slot:14b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:14b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:15b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:15b}]} run function in:drop/15
execute unless block ~ ~1 ~ barrel{Items:[{Slot:15b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:15b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:16b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:16b}]} run function in:drop/16
execute unless block ~ ~1 ~ barrel{Items:[{Slot:16b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:16b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:17b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:17b}]} run function in:drop/17
execute unless block ~ ~1 ~ barrel{Items:[{Slot:17b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:17b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:18b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:18b}]} run function in:drop/18
execute unless block ~ ~1 ~ barrel{Items:[{Slot:18b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:18b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:19b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:19b}]} run function in:drop/19
execute unless block ~ ~1 ~ barrel{Items:[{Slot:19b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:19b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:20b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:20b}]} run function in:drop/20
execute unless block ~ ~1 ~ barrel{Items:[{Slot:20b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:20b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:21b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:21b}]} run function in:drop/21
execute unless block ~ ~1 ~ barrel{Items:[{Slot:21b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:21b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
#execute unless block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:22b}]} run function in:drop/22
#execute unless block ~ ~1 ~ barrel{Items:[{Slot:22b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:22b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:23b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:23b}]} run function in:drop/23
execute unless block ~ ~1 ~ barrel{Items:[{Slot:23b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:23b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:24b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:24b}]} run function in:drop/24
execute unless block ~ ~1 ~ barrel{Items:[{Slot:24b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:24b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:25b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:25b}]} run function in:drop/25
execute unless block ~ ~1 ~ barrel{Items:[{Slot:25b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:25b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
execute unless block ~ ~1 ~ barrel{Items:[{Slot:26b,id:"minecraft:gray_stained_glass_pane"}]} if block ~ ~1 ~ barrel{Items:[{Slot:26b}]} run function in:drop/26
execute unless block ~ ~1 ~ barrel{Items:[{Slot:26b,id:"minecraft:gray_stained_glass_pane"}]} run data modify block ~ ~1 ~ Items insert 0 value {Slot:26b,id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{inGlass:1b,display:{Name:'{"text":" "}'}}}
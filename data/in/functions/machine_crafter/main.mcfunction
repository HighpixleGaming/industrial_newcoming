#Break Block#
execute at @s if block ~ ~1 ~ air run function in:machine_crafter/broken

###Detect For Recipes###

#Energized Smelter#
execute if block ~ ~1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:emerald",Count:1b,tag:{chargeT1:1b}},{Slot:2b,id:"minecraft:iron_block",Count:1b},{Slot:3b,id:"minecraft:emerald",Count:1b,tag:{chargeT1:1b}},{Slot:4b,id:"minecraft:furnace",Count:1b},{Slot:5b,id:"minecraft:emerald",Count:1b,tag:{chargeT1:1b}},{Slot:6b,id:"minecraft:iron_block",Count:1b},{Slot:7b,id:"minecraft:emerald",Count:1b,tag:{chargeT1:1b}},{Slot:8b,id:"minecraft:iron_block",Count:1b}]} run function in:machine_crafter/recipes/energized_smelter

#Fuel Generator#
execute if block ~ ~1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:redstone_block",Count:1b},{Slot:2b,id:"minecraft:iron_block",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:furnace",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:6b,id:"minecraft:iron_block",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:iron_block",Count:1b}]} run function in:machine_crafter/recipes/fuel_generator
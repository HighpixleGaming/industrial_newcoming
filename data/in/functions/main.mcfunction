###Clearing###
clear @a red_stained_glass_pane{inGlass:1b}
kill @e[nbt={Item:{tag:{inGlass:1b}}}]

###Fuel Generator### 

#Check#
execute as @e[tag=fuelGeneratorCloud,limit=1,tag=!summoned] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["fuelGeneratorStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_block",Count:1b}]}
execute as @e[tag=fuelGeneratorCloud,limit=1] run tag @s add summoned
execute as @e[tag=fuelGeneratorStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:fuel_generator/place
execute as @e[tag=fuelGeneratorStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:fuel_generator/failed_place
execute as @e[tag=fuelGeneratorStand,tag=checked] at @s if block ~ ~1 ~ air run function in:fuel_generator/broken

#Main#
execute as @e[tag=fuelGeneratorStand,tag=checked] at @s if block ~ ~1 ~ blast_furnace run function in:fuel_generator/main

######################

###Alloy Smelter###

#Check#
execute as @e[tag=alloyFurnaceCloud] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["alloyFurnaceStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @e[tag=alloyFurnaceStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:alloy_furnace/place
execute as @e[tag=alloyFurnaceStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:alloy_furnace/failed_place
execute as @e[tag=alloyFurnaceStand,tag=checked] at @s if block ~ ~1 ~ air run function in:alloy_furnace/broken

####################################

###Energized Smelter###

#Check#
execute as @e[tag=energizedSmelterCloud] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["energizedSmelterStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @e[tag=energizedSmelterStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:energized_smelter/place
execute as @e[tag=energizedSmelterStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:energized_smelter/failed_place
execute as @e[tag=energizedSmelterStand,tag=checked] at @s if block ~ ~1 ~ air run function in:energized_smelter/broken

#Main#
execute as @e[tag=energizedSmelterStand,tag=checked] at @s if block ~ ~1 ~ furnace run function in:energized_smelter/main

#################################

###Machine Crafter###

#Check#
execute as @e[tag=machineCrafterCloud] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["machineCrafterStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b}]}
execute as @e[tag=machineCrafterStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:machine_crafter/place
execute as @e[tag=machineCrafterStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:machine_crafter/failed_place
execute as @e[tag=machineCrafterStand,tag=checked] at @s if block ~ ~1 ~ air run function in:machine_crafter/broken

#Main#
execute as @e[tag=machineCrafterStand,tag=checked] at @s run function in:machine_crafter/main

#################################

###Crusher###

#Check#
execute as @e[tag=crusherCloud] at @s run summon minecraft:armor_stand ~ ~-0.75 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["crusherStand","notChecked"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}]}
execute as @e[tag=crusherStand,tag=notChecked] at @s if block ~ ~1 ~ air run function in:crusher/place
execute as @e[tag=crusherStand,tag=notChecked] at @s unless block ~ ~1 ~ air run function in:crusher/failed_place
execute as @e[tag=crusherStand,tag=checked] at @s if block ~ ~1 ~ air run function in:crusher/broken

#Main#
execute as @e[tag=crusherStand,tag=checked] at @s run function in:crusher/main


###Tags###
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye",Count:1b,tag:{chargeT1:1b}}}] run tag @s add chargeT1
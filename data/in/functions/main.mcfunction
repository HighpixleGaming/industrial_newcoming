###Clearing###
clear @a red_stained_glass_pane{inGlass:1b}
clear @a gray_stained_glass_pane{inGlass:1b}
kill @e[nbt={Item:{tag:{inGlass:1b}}}]

#Custom Blocks#
execute as @e[tag=inCustomBlockCloud] run function in:custom_blocks

#Mains#
execute as @e[tag=fuelGeneratorStand,tag=checked] at @s run function in:fuel_generator/main
execute as @e[tag=alloyFurnaceStand,tag=checked] at @s run function in:alloy_furnace/main
execute as @e[tag=energizedSmelterStand,tag=checked] at @s run function in:energized_smelter/main
execute as @e[tag=machineCrafterStand,tag=checked] at @s run function in:machine_crafter/main
execute as @e[tag=crusherStand,tag=checked] at @s run function in:crusher/main

###Tags###
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye",Count:1b,tag:{chargeT1:1b}}}] run tag @s add chargeT1
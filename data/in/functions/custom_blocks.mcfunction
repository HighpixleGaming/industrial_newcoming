#Fuel Generator#
execute as @e[tag=fuelGeneratorCloud,limit=1] run function in:summoning/fuel_generator
execute as @e[tag=fuelGeneratorStand,tag=notChecked,limit=1] run function in:summoning/fuel_generator

###Alloy Furnace###
execute as @e[tag=alloyFurnaceCloud,limit=1] run function in:summoning/alloy_furnace
execute as @e[tag=alloyFurnaceStand,tag=notChecked,limit=1] run function in:summoning/alloy_furnace

#Energized Smelter#
execute as @e[tag=energizedSmelterCloud,limit=1] run function in:summoning/energized_smelter
execute as @e[tag=energizedSmelterStand,tag=notChecked,limit=1] run function in:summoning/energized_smelter

#Machine Crafter#
execute as @e[tag=machineCrafterCloud,limit=1] run function in:summoning/machine_crafter
execute as @e[tag=machineCrafterStand,tag=notChecked,limit=1] run function in:summoning/machine_crafter

#Crusher#
execute as @e[tag=crusherCloud,limit=1] run function in:summoning/crusher
execute as @e[tag=crusherStand,tag=notChecked,limit=1] run function in:summoning/crusher
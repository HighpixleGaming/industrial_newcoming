execute as @p if entity @s[y_rotation=135..-135] run setblock ~ ~1 ~ minecraft:furnace[facing=south]{CustomName:'{"text":"Energized Smelter","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=-45..45] run setblock ~ ~1 ~ minecraft:furnace[facing=north]{CustomName:'{"text":"Energized Smelter","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=45..135] run setblock ~ ~1 ~ minecraft:furnace[facing=east]{CustomName:'{"text":"Energized Smelter","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=-135..-45] run setblock ~ ~1 ~ minecraft:furnace[facing=west]{CustomName:'{"text":"Energized Smelter","color":"yellow","italic":false}'} replace
tag @s remove notChecked
tag @s add checked
execute as @p if entity @s[y_rotation=135..-135] run setblock ~ ~1 ~ minecraft:blast_furnace[facing=south]{CustomName:'{"text":"Alloy Furnace","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=-45..45] run setblock ~ ~1 ~ minecraft:blast_furnace[facing=north]{CustomName:'{"text":"Alloy Furnace","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=45..135] run setblock ~ ~1 ~ minecraft:blast_furnace[facing=east]{CustomName:'{"text":"Alloy Furnace","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=-135..-45] run setblock ~ ~1 ~ minecraft:blast_furnace[facing=west]{CustomName:'{"text":"Alloy Furnace","color":"yellow","italic":false}'} replace
tag @s remove notChecked
tag @s add checked
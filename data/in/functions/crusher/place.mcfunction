execute as @p if entity @s[y_rotation=135..-135] run setblock ~ ~1 ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Crusher","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=-45..45] run setblock ~ ~1 ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Crusher","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=45..135] run setblock ~ ~1 ~ minecraft:smoker[facing=east]{CustomName:'{"text":"Crusher","color":"yellow","italic":false}'} replace
execute as @p if entity @s[y_rotation=-135..-45] run setblock ~ ~1 ~ minecraft:smoker[facing=west]{CustomName:'{"text":"Crusher","color":"yellow","italic":false}'} replace
tag @s remove notChecked
tag @s add checked
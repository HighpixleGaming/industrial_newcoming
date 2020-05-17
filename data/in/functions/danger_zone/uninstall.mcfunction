scoreboard objectives remove ifPower
scoreboard objectives remove inTimer
scoreboard objectives remove inItemCount
execute as @e[tag=checked] run setblock ~ ~1 ~ air
execute as @e[tag=checked] run kill @s
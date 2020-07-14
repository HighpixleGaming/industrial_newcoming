kill @e[tag=chargeT1,sort=nearest,limit=1]
tag @s add powered
scoreboard players set @s ifPower 16
playsound minecraft:block.anvil.place voice @p
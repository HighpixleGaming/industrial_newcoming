kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:furnace",Count:1b}},limit=1]
summon minecraft:item ~ ~1 ~ {Motion:[0.0,0.27,0.0],Item:{id:"minecraft:endermite_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Energized Smelter","color":"yellow","italic":false}',Lore:['{"text":"Works Like A","color":"green","italic":false}','{"text":"Custom Furnace","color":"green","italic":false}','{"text":"(Requires IF)","color":"red","italic":false}']},HideFlags:1,energizedSmelter:1b,Enchantments:[{id:"minecraft:protection",lvl:0s}],EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,Duration:2,WaitTime:0,Tags:["energizedSmelterCloud","inCustomBlockCloud"]}}}}
kill @e[tag=inPowerDisplay]
kill @s
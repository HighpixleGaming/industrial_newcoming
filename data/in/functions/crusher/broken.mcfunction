kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:smoker",Count:1b}},limit=1]
summon minecraft:item ~ ~1 ~ {Motion:[0.0,0.27,0.0],Item:{id:"minecraft:ravager_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Crusher","color":"yellow","italic":false}',Lore:['{"text":"Crushes Items","color":"green","italic":false}','{"text":"Into Dusts or","color":"green","italic":false}','{"text":"Pulverized Versions","color":"green","italic":false}','{"text":"(Requires IF)","color":"red","italic":false}']},HideFlags:1,crusher:1b,Enchantments:[{id:"minecraft:protection",lvl:0s}],EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,Duration:2,WaitTime:0,Tags:["crusherCloud","inCustomBlockCloud"]}}}}
kill @e[tag=inPowerDisplay]
kill @s
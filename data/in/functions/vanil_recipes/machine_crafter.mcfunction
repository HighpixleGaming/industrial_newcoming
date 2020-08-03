give @s minecraft:fox_spawn_egg{display:{Name:'{"text":"Machine Crafter","color":"yellow","italic":false}',Lore:['{"text":"Used To Create","color":"green","italic":false}','{"text":"Industrial Newcoming ","color":"green","italic":false}','{"text":"Machines","color":"green","italic":false}']},HideFlags:1,machineCrafter:1b,Enchantments:[{id:"minecraft:protection",lvl:0s}],EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,Duration:1,WaitTime:0,Tags:["machineCrafterCloud"]}} 1
clear @s minecraft:knowledge_book 1
recipe take @s in:machine_crafter
advancement revoke @s only in:machine_crafter
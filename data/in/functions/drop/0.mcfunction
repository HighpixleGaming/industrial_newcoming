function in:drop
data modify entity @e[nbt={Item:{tag:{inDrop:1b}}},limit=1,sort=nearest] Item merge from block ~ ~1 ~ Items[{Slot:0b}]
execute as @e[type=item,nbt={Item:{tag:{inDrop:1b}}}] run data remove entity @s Item.tag.inDrop
data remove block ~ ~1 ~ Items[{Slot:0b}]
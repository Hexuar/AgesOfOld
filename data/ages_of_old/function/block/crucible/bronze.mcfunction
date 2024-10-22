loot spawn ~ ~ ~ loot ages_of_old:items/bronze_ingot
data modify entity @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:bronze_ingot"}}},dx=1,dy=1,dz=1] Item.count set from entity @s Item.count
kill @s
kill @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}},dx=1,dy=1,dz=1]
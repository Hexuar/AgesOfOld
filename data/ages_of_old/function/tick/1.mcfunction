# Tent
execute at @a as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{tent_dead:true}}}}},distance=..16] at @s run function ages_of_old:entity/tent_death

# Blocks
execute as @e[type=item_frame,tag=ages_of_old.place_block,sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function ages_of_old:block/place with entity @s Item.components."minecraft:custom_data"
execute at @a as @e[type=item_display,tag=ages_of_old.block,sort=nearest] at @s run function ages_of_old:block/tick

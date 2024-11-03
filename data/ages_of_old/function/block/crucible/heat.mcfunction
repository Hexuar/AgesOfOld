execute if entity @s[nbt={Item:{id:"minecraft:command_block"}}] unless entity @s[nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}}] unless entity @s[nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:bronze_ingot"}}}] run return 0


# Ages of old Temperature
scoreboard players add @s ages_of_old.temperature 1
data modify entity @s Age set value 0

# Voxelsmith Temperature
execute if predicate voxelsmith:item/is_smithing_material unless block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/heat_item
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{voxelsmith:{crafting_item:1b}}}}}] unless block ~ ~ ~ #voxelsmith:waterloggable[waterlogged=true] run function voxelsmith:ground_recipes/temperature/heat_item


# Sound
execute store result score #play_sound ages_of_old.value run random value 0..100
execute if score #play_sound ages_of_old.value matches ..10 run playsound block.lava.pop block @a ~ ~ ~

# Display particle
execute store result score #display_particle ages_of_old.value run random value 0..100
execute if score #display_particle ages_of_old.value matches ..10 if entity @s[nbt={Item:{id:"minecraft:raw_copper"}}] run particle block{block_state:"raw_copper_block"} ~ ~ ~ 0 0.3 0 1 25 normal @a
execute if score #display_particle ages_of_old.value matches ..50 if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run particle block{block_state:"raw_iron_block"} ~ ~ ~ 0 0.3 0 1 2 normal @a
execute if score #display_particle ages_of_old.value matches ..50 if entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] run particle block{block_state:"raw_gold_block"} ~ ~ ~ 0 0.3 0 1 2 normal @a
execute if score #display_particle ages_of_old.value matches ..50 if entity @s[nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}}] run particle block{block_state:"deepslate_coal_ore"} ~ ~ ~ 0 0.3 0 1 2 normal @a


# Output
execute if items entity @s container.0 minecraft:raw_copper unless entity @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}},dx=1,dy=1,dz=1] if score @s ages_of_old.temperature >= #copper_melting_temperature ages_of_old.temperature run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if items entity @s container.0 minecraft:raw_copper if score @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}},dx=1,dy=1,dz=1] ages_of_old.temperature >= #tin_melting_temperature ages_of_old.temperature if score @s ages_of_old.temperature >= #copper_melting_temperature ages_of_old.temperature run function ages_of_old:block/crucible/bronze
execute if items entity @s container.0 minecraft:raw_iron if score @s ages_of_old.temperature >= #iron_melting_temperature ages_of_old.temperature run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if items entity @s container.0 minecraft:raw_gold if score @s ages_of_old.temperature >= #gold_melting_temperature ages_of_old.temperature run data modify entity @s Item.id set value "minecraft:gold_ingot"
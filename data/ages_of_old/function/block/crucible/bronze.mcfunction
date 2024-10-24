# Get item count
execute store result score #copper ages_of_old.value run data get entity @s Item.count
execute store result score #tin ages_of_old.value run data get entity @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}},dx=1,dy=1,dz=1] Item.count

# Calculate output count
scoreboard players operation #bronze ages_of_old.value = #copper ages_of_old.value
scoreboard players operation #bronze ages_of_old.value < #tin ages_of_old.value
scoreboard players operation #copper ages_of_old.value -= #bronze ages_of_old.value
scoreboard players operation #tin ages_of_old.value -= #bronze ages_of_old.value

# Set output storage
execute store result storage ages_of_old:crucible copper int 1 run scoreboard players get #copper ages_of_old.value
execute store result storage ages_of_old:crucible tin int 1 run scoreboard players get #tin ages_of_old.value
execute store result storage ages_of_old:crucible bronze int 1 run scoreboard players get #bronze ages_of_old.value

# Spawn output
loot spawn ~ ~ ~ loot ages_of_old:items/bronze_ingot

# Set count
data modify entity @s Item.count set from storage ages_of_old:crucible copper
data modify entity @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}},dx=1,dy=1,dz=1] Item.count set from storage ages_of_old:crucible tin
data modify entity @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:bronze_ingot"}}},dx=1,dy=1,dz=1] Item.count set from storage ages_of_old:crucible bronze

# Kill items with count = 0
execute if score #copper ages_of_old.value matches 0 run kill @s
execute if score #tin ages_of_old.value matches 0 run kill @n[type=item,nbt={Item:{id:"minecraft:command_block",components:{"minecraft:item_model":"ages_of_old:raw_tin"}}},dx=1,dy=1,dz=1]
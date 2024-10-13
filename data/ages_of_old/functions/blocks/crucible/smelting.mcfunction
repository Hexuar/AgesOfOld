# increase smelt value
scoreboard players add @s ages_of_old.meltLevel 1

# display particle
execute if entity @s[nbt={Item:{id:"minecraft:raw_copper"}}] run particle block raw_copper_block ~ ~ ~ 0 0.3 0 1 25 normal @a
execute if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run particle block raw_iron_block ~ ~ ~ 0 0.3 0 1 25 normal @a

# output
execute if score @s[nbt={Item:{id:"minecraft:raw_copper"}}] ages_of_old.meltLevel matches 80.. run function ages_of_old:blocks/crucible/output/copper
execute if score @s[nbt={Item:{id:"minecraft:raw_iron"}}] ages_of_old.meltLevel matches 120.. run function ages_of_old:blocks/crucible/output/iron
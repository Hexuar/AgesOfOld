# Break
execute if block ~ ~ ~ #air run function ages_of_old:block/break with entity @s item.components."minecraft:custom_data"

# Raw crucible
execute if entity @s[tag=ages_of_old.raw_crucible] if block ~ ~-1 ~ #campfires[lit=true] run function ages_of_old:block/raw_crucible/bake
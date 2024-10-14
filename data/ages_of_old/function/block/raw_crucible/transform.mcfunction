data modify entity @s item.components."minecraft:item_model" set value "ages_of_old:crucible"
data modify entity @s item.components."minecraft:custom_data".loot_table set value "ages_of_old:blocks/crucible"
tag @s remove ages_of_old.raw_crucible
tag @s add ages_of_old.crucible
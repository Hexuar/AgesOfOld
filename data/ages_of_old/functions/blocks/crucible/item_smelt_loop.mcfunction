# smelting
execute if block ~ ~ ~ cauldron if block ~ ~-1 ~ campfire[lit=true] at @s run function ages_of_old:blocks/crucible/smelting

# solidifying
execute unless block ~ ~-1 ~ campfire[lit=true] at @s run function ages_of_old:blocks/crucible/solidifying
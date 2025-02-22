scoreboard players add @s ages_of_old.temperature 1

particle white_smoke ~ ~ ~ 0.3 0.3 0.3 0.01 2

execute if score @s ages_of_old.temperature matches 300.. run function ages_of_old:block/raw_crucible/transform
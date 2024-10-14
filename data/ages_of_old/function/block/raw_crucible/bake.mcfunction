scoreboard players add @s ages_of_old.temperature 1

particle white_smoke ~ ~ ~ 0.25 0.25 0.25 0.01 1

execute if score @s ages_of_old.temperature matches 100.. run function ages_of_old:block/raw_crucible/transform
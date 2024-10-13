# increase smelt value
scoreboard players remove @s ages_of_old.meltLevel 1

# check if solid
execute if score @s ages_of_old.meltLevel matches ..0 run tag @s remove ages_of_old.melting
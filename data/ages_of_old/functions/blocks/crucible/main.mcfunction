# Block
execute as @s[tag=ages_of_old.not_placed] at @s run function ages_of_old:blocks/crucible/place
execute unless block ~ ~ ~ cauldron unless block ~ ~ ~ water_cauldron unless block ~ ~ ~ lava_cauldron run function ages_of_old:blocks/crucible/remove

# check if item in crucible can be smelted
execute positioned ~ ~0.5 ~ if block ~ ~-1 ~ campfire[lit=true] as @e[type=item,tag=!global.ignore,tag=!global.ignore.kill,tag=!global.ignore.gui,tag=!ages_of_old.melting,distance=..0.4] run function ages_of_old:blocks/crucible/smelting_items

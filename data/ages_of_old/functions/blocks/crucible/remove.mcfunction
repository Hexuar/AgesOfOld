# as & at block armor stand
execute if entity @p[gamemode=!creative] run loot spawn ~ ~ ~ loot ages_of_old:blocks/crucible
kill @e[tag=!global.ignore,tag=!global.ignore.kill,type=item,nbt={Item:{id:"minecraft:cauldron"}},distance=..1]
kill @s
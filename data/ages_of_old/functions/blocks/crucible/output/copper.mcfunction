playsound block.lava.extinguish block @a ~ ~ ~
summon item ~ ~ ~ {Item:{id:"minecraft:copper_ingot", Count:1b},Tags:["ages_of_old.crucible_output"]}
data modify entity @e[tag=ages_of_old.crucible_output,sort=nearest,limit=1,tag=!global.ignore] Item.Count set from entity @s Item.Count
kill @s
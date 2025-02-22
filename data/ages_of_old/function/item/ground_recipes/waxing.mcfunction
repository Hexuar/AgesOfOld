kill @s
data modify entity @e[dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.components."minecraft:custom_data".ages_of_old.oxidizable set value false

playsound item.honeycomb.wax_on player @a ~ ~ ~
particle wax_on ~ ~ ~ 0.5 0.5 0.5 0.05 10
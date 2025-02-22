data modify entity @e[dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.components."minecraft:custom_data".ages_of_old.oxidizable set value true
tag @e[dx=0,dy=0,dz=0,sort=nearest,limit=1] add ages_of_old.modified

playsound item.axe.wax_off player @a ~ ~ ~
particle wax_off ~ ~ ~ 0.5 0.5 0.5 0.05 10
execute store result score #oxidation ages_of_old.value run data get entity @e[dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.components."minecraft:custom_model_data"
scoreboard players remove #oxidation ages_of_old.value 1200
execute store result entity @e[dx=0,dy=0,dz=0,sort=nearest,limit=1] Item.components."minecraft:custom_model_data" int 1 run scoreboard players get #oxidation ages_of_old.value

tag @e[dx=0,dy=0,dz=0,sort=nearest,limit=1] add ages_of_old.modified

playsound item.axe.wax_off player @a ~ ~ ~
particle wax_off ~ ~ ~ 0.5 0.5 0.5 0.05 10
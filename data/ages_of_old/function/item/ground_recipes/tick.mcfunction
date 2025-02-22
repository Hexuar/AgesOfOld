# Waxing
execute at @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{oxidizable:1b}}}}}] as @e[nbt={Item:{id:"minecraft:honeycomb",count:1}},dx=0,dy=0,dz=0,sort=nearest,limit=1] run function ages_of_old:item/ground_recipes/waxing

# Scraping Wax
execute at @e[tag=!ages_of_old.modified,type=item,nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{oxidizable:0b}}}}}] as @e[nbt={Item:{count:1}},dx=0,dy=0,dz=0,sort=nearest] if items entity @s container.0 #minecraft:axes run function ages_of_old:item/ground_recipes/scraping_wax

# Scraping
execute at @e[tag=!ages_of_old.modified,type=item,nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{oxidizable:1b}}}}}] as @e[nbt={Item:{count:1}},dx=0,dy=0,dz=0,sort=nearest] if items entity @s container.0 #minecraft:axes run function ages_of_old:item/ground_recipes/scraping
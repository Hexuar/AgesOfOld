# Raw Crucible
execute if entity @s[tag=ages_of_old.raw_crucible] if block ~ ~-1 ~ #campfires[lit=true] run function ages_of_old:block/raw_crucible/bake

# Crucible
execute if entity @s[tag=ages_of_old.crucible] if block ~ ~-1 ~ #campfires[lit=true] align xyz as @e[type=item,dx=0,dy=0,dz=0] at @s if items entity @s container.0 #ages_of_old:crucible_processable run function ages_of_old:block/crucible/heat
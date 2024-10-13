## Time
scoreboard players set #EntityLoop_time ages_of_old.time 0

## Tents
execute as @e[type=item,nbt={Item:{tag:{ages_of_old:{tent_dead:1b}}}}] at @s run function ages_of_old:entities/tents/death
## Time
scoreboard players set #BlockLoop_time ages_of_old.time 0

## Crucible
execute as @e[type=item_frame,tag=ages_of_old.crucible,tag=!global.ignore,tag=!global.ignore.kill,tag=!global.ignore.gui] at @s run function ages_of_old:blocks/crucible/main

# smelting items
execute as @e[type=item,tag=ages_of_old.melting,tag=!global.ignore,tag=!global.ignore.kill,tag=!global.ignore.gui] at @s run function ages_of_old:blocks/crucible/item_smelt_loop
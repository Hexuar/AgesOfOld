#######################################################
##### Ages of Old ##### Loop ##### By Hellogaming #####                   
#######################################################

# Block Loop
scoreboard players add #BlockLoop_time ages_of_old.time 1
execute if score #BlockLoop_time ages_of_old.time >= #BlockLoop_maxTime ages_of_old.time run function ages_of_old:blocks/block_loop

# Item Loop
scoreboard players add #ItemLoop_time ages_of_old.time 1
execute if score #ItemLoop_time ages_of_old.time >= #ItemLoop_maxTime ages_of_old.time run function ages_of_old:items/item_loop

# Entity Loop
scoreboard players add #EntityLoop_time ages_of_old.time 1
execute if score #EntityLoop_time ages_of_old.time >= #EntityLoop_maxTime ages_of_old.time run function ages_of_old:entities/entity_loop
datapack disable vanilla

#tellraw @a {"text":"Ages of Old Loaded!","bold":true,"color":"green"}
#tellraw @a {"text":"Vanilla datapack disabled","color":"dark_green"}

scoreboard objectives add ages_of_old.time dummy
scoreboard players set #BlockLoop_maxTime ages_of_old.time 10
scoreboard players set #ItemLoop_maxTime ages_of_old.time 10
scoreboard players set #EntityLoop_maxTime ages_of_old.time 10

scoreboard objectives add ages_of_old.usedIronSword used:iron_sword
scoreboard objectives add ages_of_old.usedIronPickaxe used:iron_pickaxe
scoreboard objectives add ages_of_old.usedIronAxe used:iron_axe
scoreboard objectives add ages_of_old.usedIronHoe used:iron_hoe
scoreboard objectives add ages_of_old.usedIronShovel used:iron_shovel

scoreboard objectives add ages_of_old.meltLevel dummy


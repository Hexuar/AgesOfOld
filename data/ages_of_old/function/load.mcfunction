#scoreboard objectives remove ages_of_old.temperature
scoreboard objectives add ages_of_old.value dummy
scoreboard objectives add ages_of_old.temperature dummy


# Values
scoreboard players set #copper_melting_temperature ages_of_old.temperature 300
scoreboard players set #iron_melting_temperature ages_of_old.temperature 600
scoreboard players set #gold_melting_temperature ages_of_old.temperature 900


# Constants
scoreboard players set #20 ages_of_old.value 20

data modify storage ages_of_old:oxidation states set value ["","exposed_", "weathered_", "oxidized_"]
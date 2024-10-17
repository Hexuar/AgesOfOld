function ages_of_old:tick/1

scoreboard players add #tick20 ages_of_old.value 1
execute if score #tick20 ages_of_old.value matches 20.. run function ages_of_old:tick/20